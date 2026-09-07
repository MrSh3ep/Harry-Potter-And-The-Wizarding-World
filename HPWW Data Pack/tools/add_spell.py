#!/usr/bin/env python3
"""Create a bindable HPWW starter spell from a name and one icon image."""

from __future__ import annotations

import argparse
import colorsys
import io
import json
import math
import os
from pathlib import Path
import re
import sys
import tempfile
from typing import Iterable

try:
    from PIL import Image, ImageDraw
except ImportError:  # pragma: no cover - handled with a useful runtime error
    Image = None
    ImageDraw = None


SCRIPT_PATH = Path(__file__).resolve()
DEFAULT_DATA_PACK = SCRIPT_PATH.parent.parent
DEFAULT_RESOURCE_PACK = DEFAULT_DATA_PACK.parent / "HPWW Resource Pack"

SPELLS_ROOT = Path("data/hpww/function/main/spells/function")
COOLDOWN_ROOT = SPELLS_ROOT / "api/spell_cooldown"

DEFINITIONS_FILE = COOLDOWN_ROOT / "spell_definitions.mcfunction"
REGISTRY_FILE = COOLDOWN_ROOT / "tick/registry.mcfunction"
PLAYER_TICK_FILE = COOLDOWN_ROOT / "tick/player.mcfunction"
PROBE_FILE = COOLDOWN_ROOT / "tick/probe.mcfunction"
FORCE_REFRESH_FILE = COOLDOWN_ROOT / "icons/force_refresh_all_icons.mcfunction"

FONT_ROOT = Path("assets/hpww/font")
TEXTURE_ROOT = Path("assets/hpww/textures/spell_wheel")

ICON_CANVAS = (34, 36)
ICON_BOX = (4, 4, 30, 30)
ICON_PIXELS = 26
FONT_ASCENT = 25
FONT_HEIGHT = 46


class GeneratorError(RuntimeError):
    pass


def validate_name(raw_name: str) -> str:
    name = raw_name.strip().lower()
    if not re.fullmatch(r"[a-z][a-z0-9_]*", name):
        raise GeneratorError(
            "Spell name must start with a letter and contain only lowercase "
            "letters, numbers, or underscores (example: stupefy)."
        )
    return name


def display_name_for(name: str) -> str:
    return " ".join(part.capitalize() for part in name.split("_"))


def require_pillow() -> None:
    if Image is None:
        raise GeneratorError(
            "Pillow is required to generate icons. Install it with: py -m pip install Pillow"
        )


def read_text(path: Path) -> str:
    try:
        return path.read_text(encoding="utf-8-sig")
    except FileNotFoundError as exc:
        raise GeneratorError(f"Required pack file is missing: {path}") from exc


def newline_for(text: str) -> str:
    return "\r\n" if "\r\n" in text else "\n"


def append_unique_line(text: str, line: str) -> str:
    if any(existing.strip() == line for existing in text.splitlines()):
        return text
    nl = newline_for(text)
    return text.rstrip() + nl + line + nl


def replace_line(text: str, old_line: str, new_line: str) -> str:
    nl = newline_for(text)
    lines = text.splitlines()
    try:
        index = lines.index(old_line)
    except ValueError as exc:
        raise GeneratorError(f"Could not find the expected line:\n{old_line}") from exc
    lines[index] = new_line
    return nl.join(lines) + (nl if text.endswith(("\n", "\r")) else "")


def spell_definition(name: str, display_name: str) -> str:
    cooldown_keys = ",".join(f'D_{index}:"C{100 + index}"' for index in range(1, 27))
    return (
        f'data modify storage hpww:gobal_spell_data {name} set value '
        f'{{Spell:"{name}",display_name:"{display_name}",icon_font:"{name}",'
        f'Current_Key:"A100",Keys:{{Active:"A100",Selected:"B100",'
        f'Cooldown:{{{cooldown_keys}}}}}}}'
    )


def update_definitions(text: str, name: str, display_name: str, force: bool) -> str:
    definition = spell_definition(name, display_name)
    definition_pattern = re.compile(
        rf"(?m)^data modify storage hpww:gobal_spell_data {re.escape(name)} set value .*$"
    )
    existing_definition = definition_pattern.search(text)

    if existing_definition:
        if not force:
            raise GeneratorError(
                f'Spell "{name}" is already registered. Use --force only if you want to rebuild it.'
            )
        text = definition_pattern.sub(definition, text, count=1)

    registry_pattern = re.compile(
        r"(?m)^data modify storage hpww:gobal_spell_data cooldown_registry set value (\[[^\r\n]*\])\s*$"
    )
    registry_match = registry_pattern.search(text)
    if not registry_match:
        raise GeneratorError("Could not find cooldown_registry in spell_definitions.mcfunction.")

    try:
        registry = json.loads(registry_match.group(1))
    except json.JSONDecodeError as exc:
        raise GeneratorError("cooldown_registry is not a valid string list.") from exc

    if name not in registry:
        registry.append(name)
    registry_line = (
        "data modify storage hpww:gobal_spell_data cooldown_registry set value "
        + json.dumps(registry, separators=(",", ":"))
    )

    if not existing_definition:
        nl = newline_for(text)
        insertion = f"#{display_name}{nl}{definition}{nl}{nl}"
        text = text[: registry_match.start()] + insertion + text[registry_match.start() :]

    updated_match = registry_pattern.search(text)
    if not updated_match:
        raise GeneratorError("Lost cooldown_registry while updating spell definitions.")
    return text[: updated_match.start()] + registry_line + text[updated_match.end() :]


def update_player_tick(text: str, name: str) -> str:
    clause = f"unless data storage pdb:main in.cooldowns.{name}"
    if clause in text:
        return text

    target_suffix = "run scoreboard players set @s cooldown_api_active 0"
    lines = text.splitlines()
    matches = [index for index, line in enumerate(lines) if target_suffix in line]
    if len(matches) != 1:
        raise GeneratorError(
            "Expected exactly one cooldown idle check in tick/player.mcfunction."
        )

    index = matches[0]
    lines[index] = lines[index].replace(target_suffix, f"{clause} {target_suffix}", 1)
    nl = newline_for(text)
    return nl.join(lines) + (nl if text.endswith(("\n", "\r")) else "")


def modify_shared_files(
    data_pack: Path, name: str, display_name: str, force: bool
) -> dict[Path, bytes]:
    definitions_path = data_pack / DEFINITIONS_FILE
    registry_path = data_pack / REGISTRY_FILE
    player_path = data_pack / PLAYER_TICK_FILE
    probe_path = data_pack / PROBE_FILE
    refresh_path = data_pack / FORCE_REFRESH_FILE

    updates: dict[Path, bytes] = {}
    definitions = update_definitions(
        read_text(definitions_path), name, display_name, force
    )
    updates[definitions_path] = definitions.encode("utf-8")

    registry_line = (
        f"execute if data storage pdb:main in.cooldowns.{name} run function "
        f'hpww:main/spells/function/api/spell_cooldown/tick/spell {{spell:"{name}"}}'
    )
    updates[registry_path] = append_unique_line(
        read_text(registry_path), registry_line
    ).encode("utf-8")

    probe_line = (
        f"execute if data storage pdb:main out.cooldowns.{name} run scoreboard players "
        "set @s cooldown_api_active 1"
    )
    updates[probe_path] = append_unique_line(read_text(probe_path), probe_line).encode(
        "utf-8"
    )

    refresh_line = (
        "function hpww:main/spells/function/api/spell_cooldown/icons/"
        f'force_refresh_spell {{spell:"{name}"}}'
    )
    updates[refresh_path] = append_unique_line(
        read_text(refresh_path), refresh_line
    ).encode("utf-8")

    updates[player_path] = update_player_tick(read_text(player_path), name).encode(
        "utf-8"
    )
    return updates


def image_bytes(image: "Image.Image") -> bytes:
    output = io.BytesIO()
    image.save(output, format="PNG")
    return output.getvalue()


def accent_rgb(image: "Image.Image") -> tuple[int, int, int]:
    crop = image.crop(ICON_BOX).convert("RGBA")
    candidates: list[tuple[float, tuple[int, int, int]]] = []
    for y in range(crop.height):
        for x in range(crop.width):
            red, green, blue, alpha = crop.getpixel((x, y))
            if alpha < 64:
                continue
            hue, saturation, value = colorsys.rgb_to_hsv(
                red / 255, green / 255, blue / 255
            )
            del hue
            score = saturation * 1.8 + value * 0.35
            if value > 0.18:
                candidates.append((score, (red, green, blue)))

    if not candidates:
        return (151, 112, 220)

    candidates.sort(reverse=True)
    selected = [rgb for _, rgb in candidates[: max(1, len(candidates) // 5)]]
    return tuple(round(sum(pixel[channel] for pixel in selected) / len(selected)) for channel in range(3))


def fit_icon_to_canvas(source: "Image.Image", resource_pack: Path) -> "Image.Image":
    source = source.convert("RGBA")
    if source.size == ICON_CANVAS:
        return source.copy()

    template_path = resource_pack / TEXTURE_ROOT / "lumos/lumos_active.png"
    if template_path.exists():
        canvas = Image.open(template_path).convert("RGBA")
    else:
        canvas = Image.new("RGBA", ICON_CANVAS, (51, 51, 65, 255))

    preview = source.copy()
    preview.thumbnail((ICON_PIXELS, ICON_PIXELS), Image.Resampling.LANCZOS)
    preview_accent = accent_rgb(
        source.resize(ICON_CANVAS, Image.Resampling.LANCZOS)
    )

    draw = ImageDraw.Draw(canvas)
    draw.rectangle((4, 4, 29, 29), fill=(15, 18, 23, 255))
    border = tuple(max(32, round(channel * 0.62)) for channel in preview_accent)
    draw.rectangle((3, 3, 30, 30), outline=(*border, 255))

    left = 4 + (ICON_PIXELS - preview.width) // 2
    top = 4 + (ICON_PIXELS - preview.height) // 2
    canvas.alpha_composite(preview, (left, top))
    return canvas


def make_selected_icon(active: "Image.Image", resource_pack: Path) -> "Image.Image":
    selected = active.copy()
    template_path = resource_pack / TEXTURE_ROOT / "lumos/lumos_selected.png"
    if template_path.exists():
        template = Image.open(template_path).convert("RGBA")
        for coordinate in range(2, 32):
            selected.putpixel((coordinate, 2), template.getpixel((coordinate, 2)))
            selected.putpixel((coordinate, 31), template.getpixel((coordinate, 31)))
            selected.putpixel((2, coordinate), template.getpixel((2, coordinate)))
            selected.putpixel((31, coordinate), template.getpixel((31, coordinate)))
    else:
        ImageDraw.Draw(selected).rectangle((2, 2, 31, 31), outline=(241, 198, 91, 255))
    return selected


def make_cooldown_icons(active: "Image.Image") -> list["Image.Image"]:
    dimmed = active.copy()
    pixels = dimmed.load()
    for y in range(4, 30):
        for x in range(4, 30):
            red, green, blue, alpha = pixels[x, y]
            pixels[x, y] = (red // 2, green // 2, blue // 2, alpha)

    frames: list[Image.Image] = []
    for frame_number in range(1, 27):
        frame = dimmed.copy()
        restored_from_y = 31 - frame_number
        if restored_from_y <= 29:
            restored = active.crop((4, restored_from_y, 30, 30))
            frame.paste(restored, (4, restored_from_y))
        frames.append(frame)
    return frames


def make_font_json(name: str) -> bytes:
    providers = [
        {
            "type": "bitmap",
            "file": f"hpww:spell_wheel/{name}/{name}_active.png",
            "chars": [chr(0xA100)],
            "ascent": FONT_ASCENT,
            "height": FONT_HEIGHT,
        },
        {
            "type": "bitmap",
            "file": f"hpww:spell_wheel/{name}/{name}_selected.png",
            "chars": [chr(0xB100)],
            "ascent": FONT_ASCENT,
            "height": FONT_HEIGHT,
        },
    ]
    for frame_number in range(1, 27):
        providers.append(
            {
                "type": "bitmap",
                "file": (
                    f"hpww:spell_wheel/{name}/{name}_cooldown_{frame_number}.png"
                ),
                "chars": [chr(int(f"C{100 + frame_number}", 16))],
                "ascent": FONT_ASCENT,
                "height": FONT_HEIGHT,
            }
        )
    return (json.dumps({"providers": providers}, indent=4, ensure_ascii=True) + "\n").encode(
        "utf-8"
    )


def particle_colors(active: "Image.Image") -> tuple[str, str, str]:
    red, green, blue = accent_rgb(active)
    primary = (red / 255, green / 255, blue / 255)
    secondary = tuple(min(1.0, channel * 1.22 + 0.06) for channel in primary)

    def vector(values: Iterable[float]) -> str:
        return "[" + ",".join(f"{value:.3f}".rstrip("0").rstrip(".") for value in values) + "]"

    return vector(primary), vector(secondary), f"#{red:02x}{green:02x}{blue:02x}"


def generated_functions(
    data_pack: Path,
    name: str,
    display_name: str,
    cooldown_seconds: int,
    color_1: str,
    color_2: str,
    text_color: str,
) -> dict[Path, bytes]:
    root = data_pack / SPELLS_ROOT / name
    function_id = f"hpww:main/spells/function/{name}"
    api = "hpww:main/spells/function/api"

    cast = f'''# Generated starter spell entrypoint.
function {api}/spell_cooldown/read_cooldown {{spell:"{name}"}}
execute if score @s cooldown_api matches 1.. run return run function {function_id}/{name}_cooldown_sfx

function {api}/spell_cooldown/start_cooldown {{spell:"{name}",time:{cooldown_seconds}}}
function {api}/spell_cooldown/icons/flash_selected {{spell:"{name}",ticks:20}}

function {api}/spell_trails/api/spell_trail_start {{end_function_namespace:"hpww",end_function:"main/spells/function/{name}/{name}_spell_start",color_1:{color_1},color_2:{color_2},speed:2400,life_ticks:20,color:"{name}"}}
execute at @s run playsound minecraft:entity.wind_charge.wind_burst master @a[distance=0..25] ~ ~ ~ 1 1.1
'''

    cooldown_sfx = f'''function {api}/spell_cooldown/read_cooldown {{spell:"{name}"}}
tellraw @s [{{"text":"{display_name} ","color":"{text_color}"}},{{"text":"is on cooldown for ","color":"white"}},{{"score":{{"name":"@s","objective":"cooldown_api"}},"color":"green"}},{{"text":"s","color":"green"}}]
playsound block.vault.insert_item_fail master @s ~ ~ ~ 1
'''

    trail_end = f'''# Runs as and at the temporary marker where this spell trail ends.
function {function_id}/function/hit
kill @s
'''

    hit = '''# Add the spell's hit behavior here.
# This function runs as and at the spell trail's temporary end marker.
'''

    return {
        root / f"{name}_function.mcfunction": cast.encode("utf-8"),
        root / f"{name}_cooldown_sfx.mcfunction": cooldown_sfx.encode("utf-8"),
        root / f"{name}_spell_start.mcfunction": trail_end.encode("utf-8"),
        root / "function/hit.mcfunction": hit.encode("utf-8"),
    }


def validate_roots(data_pack: Path, resource_pack: Path, image_path: Path) -> None:
    if not data_pack.is_dir() or not (data_pack / "pack.mcmeta").is_file():
        raise GeneratorError(f"Not an HPWW data pack root: {data_pack}")
    if not (data_pack / DEFINITIONS_FILE).is_file():
        raise GeneratorError(f"HPWW cooldown API was not found in: {data_pack}")
    if not resource_pack.is_dir() or not (resource_pack / "pack.mcmeta").is_file():
        raise GeneratorError(f"Not an HPWW resource pack root: {resource_pack}")
    if not image_path.is_file():
        raise GeneratorError(f"Icon image does not exist: {image_path}")


def check_conflicts(data_pack: Path, resource_pack: Path, name: str, force: bool) -> None:
    if force:
        return
    destinations = [
        data_pack / SPELLS_ROOT / name,
        resource_pack / FONT_ROOT / f"{name}.json",
        resource_pack / TEXTURE_ROOT / name,
    ]
    conflicts = [str(path) for path in destinations if path.exists()]
    if conflicts:
        raise GeneratorError(
            "The spell already has generated files:\n- " + "\n- ".join(conflicts)
        )


def atomic_write(path: Path, content: bytes) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    descriptor, temporary_name = tempfile.mkstemp(prefix=f".{path.name}.", dir=path.parent)
    temporary_path = Path(temporary_name)
    try:
        with os.fdopen(descriptor, "wb") as output:
            output.write(content)
        os.replace(temporary_path, path)
    except Exception:
        temporary_path.unlink(missing_ok=True)
        raise


def commit_plan(plan: dict[Path, bytes]) -> None:
    originals: list[tuple[Path, bytes | None]] = []
    try:
        for path, content in plan.items():
            originals.append((path, path.read_bytes() if path.exists() else None))
            atomic_write(path, content)
    except Exception:
        for path, original in reversed(originals):
            if original is None:
                path.unlink(missing_ok=True)
            else:
                atomic_write(path, original)
        raise


def build_spell(
    *,
    raw_name: str,
    image_path: Path,
    data_pack: Path,
    resource_pack: Path,
    cooldown: float,
    force: bool = False,
    dry_run: bool = False,
) -> tuple[str, list[Path]]:
    require_pillow()
    name = validate_name(raw_name)
    display_name = display_name_for(name)
    cooldown_seconds = max(1, math.ceil(cooldown))
    data_pack = data_pack.resolve()
    resource_pack = resource_pack.resolve()
    image_path = image_path.resolve()

    validate_roots(data_pack, resource_pack, image_path)
    check_conflicts(data_pack, resource_pack, name, force)

    try:
        with Image.open(image_path) as uploaded:
            active = fit_icon_to_canvas(uploaded, resource_pack)
    except OSError as exc:
        raise GeneratorError(f"Could not read icon image: {image_path}") from exc

    selected = make_selected_icon(active, resource_pack)
    cooldown_frames = make_cooldown_icons(active)
    color_1, color_2, text_color = particle_colors(active)

    plan: dict[Path, bytes] = {}
    plan.update(
        generated_functions(
            data_pack,
            name,
            display_name,
            cooldown_seconds,
            color_1,
            color_2,
            text_color,
        )
    )

    texture_dir = resource_pack / TEXTURE_ROOT / name
    plan[texture_dir / f"{name}_active.png"] = image_bytes(active)
    plan[texture_dir / f"{name}_selected.png"] = image_bytes(selected)
    for index, frame in enumerate(cooldown_frames, start=1):
        plan[texture_dir / f"{name}_cooldown_{index}.png"] = image_bytes(frame)
    plan[resource_pack / FONT_ROOT / f"{name}.json"] = make_font_json(name)

    # Shared registry edits are planned last so a failed asset write cannot leave
    # the pack pointing at files that were never created.
    plan.update(modify_shared_files(data_pack, name, display_name, force))

    if not dry_run:
        commit_plan(plan)
    return name, list(plan)


def cli_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(
        description="Add a bindable starter spell and generate its spell-wheel icons."
    )
    parser.add_argument("--name", help="Spell id, such as stupefy")
    parser.add_argument("--image", type=Path, help="Source PNG/JPG for the spell icon")
    parser.add_argument(
        "--cooldown",
        type=float,
        default=3,
        help="Cooldown in seconds (default: 3; decimals round up)",
    )
    parser.add_argument("--data-pack", type=Path, default=DEFAULT_DATA_PACK)
    parser.add_argument("--resource-pack", type=Path, default=DEFAULT_RESOURCE_PACK)
    parser.add_argument("--force", action="store_true", help="Rebuild an existing spell")
    parser.add_argument("--dry-run", action="store_true", help="Validate and list changes only")
    return parser


def launch_gui() -> int:
    try:
        import tkinter as tk
        from tkinter import filedialog, messagebox, ttk
    except ImportError:
        print("Tkinter is unavailable. Run this script with --name and --image instead.")
        return 2

    root = tk.Tk()
    root.title("HPWW Spell Generator")
    root.resizable(False, False)

    name_value = tk.StringVar()
    image_value = tk.StringVar()

    frame = ttk.Frame(root, padding=18)
    frame.grid(sticky="nsew")
    ttk.Label(frame, text="Spell name").grid(row=0, column=0, sticky="w")
    name_entry = ttk.Entry(frame, textvariable=name_value, width=44)
    name_entry.grid(row=1, column=0, columnspan=2, sticky="ew", pady=(3, 12))

    ttk.Label(frame, text="Icon image").grid(row=2, column=0, sticky="w")
    image_entry = ttk.Entry(frame, textvariable=image_value, width=44)
    image_entry.grid(row=3, column=0, sticky="ew", pady=(3, 14))

    def choose_image() -> None:
        chosen = filedialog.askopenfilename(
            title="Choose spell icon",
            filetypes=[
                ("Image files", "*.png *.jpg *.jpeg *.webp"),
                ("All files", "*.*"),
            ],
        )
        if chosen:
            image_value.set(chosen)

    ttk.Button(frame, text="Browse...", command=choose_image).grid(
        row=3, column=1, padx=(8, 0), pady=(3, 14)
    )

    def create_spell() -> None:
        try:
            name, paths = build_spell(
                raw_name=name_value.get(),
                image_path=Path(image_value.get()),
                data_pack=DEFAULT_DATA_PACK,
                resource_pack=DEFAULT_RESOURCE_PACK,
                cooldown=3,
            )
        except (GeneratorError, OSError) as exc:
            messagebox.showerror("Could not create spell", str(exc), parent=root)
            return

        bind_command = (
            "function hpww:main/spells/function/api/bind_spell/api/bind "
            f'{{spell_name:"{name}",slot:1,page:1}}'
        )
        messagebox.showinfo(
            "Spell created",
            f"Created {name} ({len(paths)} files updated).\n\n"
            f"Run /reload, then bind it with:\n/{bind_command}",
            parent=root,
        )

    ttk.Button(frame, text="Create Spell", command=create_spell).grid(
        row=4, column=0, columnspan=2, sticky="ew"
    )
    name_entry.focus_set()
    root.mainloop()
    return 0


def main(argv: list[str] | None = None) -> int:
    argv = sys.argv[1:] if argv is None else argv
    if not argv:
        return launch_gui()

    parser = cli_parser()
    args = parser.parse_args(argv)
    if not args.name or not args.image:
        parser.error("--name and --image must be supplied together")

    try:
        name, paths = build_spell(
            raw_name=args.name,
            image_path=args.image,
            data_pack=args.data_pack,
            resource_pack=args.resource_pack,
            cooldown=args.cooldown,
            force=args.force,
            dry_run=args.dry_run,
        )
    except (GeneratorError, OSError) as exc:
        parser.exit(1, f"error: {exc}\n")

    action = "Would update" if args.dry_run else "Updated"
    print(f'{action} {len(paths)} files for spell "{name}":')
    for path in paths:
        print(f"  {path}")
    if not args.dry_run:
        print("\nRun /reload, then bind it with:")
        print(
            "/function hpww:main/spells/function/api/bind_spell/api/bind "
            f'{{spell_name:"{name}",slot:1,page:1}}'
        )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
