from __future__ import annotations

import json
from pathlib import Path
import shutil
import tempfile
import unittest

from PIL import Image, ImageChops

import add_spell


class AddSpellTests(unittest.TestCase):
    def setUp(self) -> None:
        self.temporary_directory = tempfile.TemporaryDirectory()
        self.root = Path(self.temporary_directory.name)
        self.data_pack = self.root / "HPWW Data Pack"
        self.resource_pack = self.root / "HPWW Resource Pack"
        self.data_pack.mkdir()
        self.resource_pack.mkdir()

        shutil.copy2(add_spell.DEFAULT_DATA_PACK / "pack.mcmeta", self.data_pack)
        shutil.copy2(add_spell.DEFAULT_RESOURCE_PACK / "pack.mcmeta", self.resource_pack)

        for relative_path in (
            add_spell.DEFINITIONS_FILE,
            add_spell.REGISTRY_FILE,
            add_spell.PLAYER_TICK_FILE,
            add_spell.PROBE_FILE,
            add_spell.FORCE_REFRESH_FILE,
        ):
            destination = self.data_pack / relative_path
            destination.parent.mkdir(parents=True, exist_ok=True)
            shutil.copy2(add_spell.DEFAULT_DATA_PACK / relative_path, destination)

        for relative_path in (
            add_spell.TEXTURE_ROOT / "lumos/lumos_active.png",
            add_spell.TEXTURE_ROOT / "lumos/lumos_selected.png",
        ):
            destination = self.resource_pack / relative_path
            destination.parent.mkdir(parents=True, exist_ok=True)
            shutil.copy2(add_spell.DEFAULT_RESOURCE_PACK / relative_path, destination)

        self.source_icon = self.root / "source.png"
        shutil.copy2(
            add_spell.DEFAULT_RESOURCE_PACK
            / add_spell.TEXTURE_ROOT
            / "lumos/lumos_active.png",
            self.source_icon,
        )

    def tearDown(self) -> None:
        self.temporary_directory.cleanup()

    def test_pillow_import_can_recover_after_startup(self) -> None:
        original_image = add_spell.Image
        original_image_draw = add_spell.ImageDraw
        original_error = add_spell.PIL_IMPORT_ERROR
        try:
            add_spell.Image = None
            add_spell.ImageDraw = None
            add_spell.PIL_IMPORT_ERROR = ImportError("simulated startup failure")
            add_spell.require_pillow()
            self.assertIsNotNone(add_spell.Image)
            self.assertIsNotNone(add_spell.ImageDraw)
            self.assertIsNone(add_spell.PIL_IMPORT_ERROR)
        finally:
            add_spell.Image = original_image
            add_spell.ImageDraw = original_image_draw
            add_spell.PIL_IMPORT_ERROR = original_error

    def test_existing_lumos_icon_algorithm_is_reproduced(self) -> None:
        texture_root = add_spell.DEFAULT_RESOURCE_PACK / add_spell.TEXTURE_ROOT / "lumos"
        with Image.open(texture_root / "lumos_active.png") as source:
            active = source.convert("RGBA")

        selected = add_spell.make_selected_icon(active, add_spell.DEFAULT_RESOURCE_PACK)
        with Image.open(texture_root / "lumos_selected.png") as expected_selected:
            self.assertIsNone(
                ImageChops.difference(
                    selected, expected_selected.convert("RGBA")
                ).convert("RGB").getbbox()
            )

        generated_frames = add_spell.make_cooldown_icons(active)
        existing_frames = []
        for index in range(1, 27):
            with Image.open(texture_root / f"lumos_cooldown_{index}.png") as expected:
                existing_frames.append(expected.convert("RGBA"))

        for index in range(1, 26):
            generated_changes = {
                (x, y)
                for y in range(4, 30)
                for x in range(4, 30)
                if generated_frames[index - 1].getpixel((x, y))
                != generated_frames[index].getpixel((x, y))
            }
            existing_changes = {
                (x, y)
                for y in range(4, 30)
                for x in range(4, 30)
                if existing_frames[index - 1].getpixel((x, y))
                != existing_frames[index].getpixel((x, y))
            }
            self.assertEqual(generated_changes, existing_changes)

    def test_builds_complete_bindable_spell_without_field_guide_edits(self) -> None:
        # Empty folders can remain after deleting a generated spell by hand.
        (
            self.data_pack
            / add_spell.SPELLS_ROOT
            / "codex_test_spell/function"
        ).mkdir(parents=True)
        (
            self.resource_pack
            / add_spell.TEXTURE_ROOT
            / "codex_test_spell"
        ).mkdir(parents=True)

        name, paths = add_spell.build_spell(
            raw_name="codex_test_spell",
            image_path=self.source_icon,
            data_pack=self.data_pack,
            resource_pack=self.resource_pack,
            cooldown=2.2,
        )

        self.assertEqual(name, "codex_test_spell")
        self.assertEqual(len(paths), 38)
        self.assertFalse(any("field_guide" in path.parts for path in paths))

        spell_root = self.data_pack / add_spell.SPELLS_ROOT / name
        cast = (spell_root / f"{name}_function.mcfunction").read_text()
        self.assertIn('time:3', cast)
        self.assertIn(f"/{name}/{name}_spell_start", cast)
        self.assertTrue((spell_root / "function/hit.mcfunction").is_file())

        texture_root = self.resource_pack / add_spell.TEXTURE_ROOT / name
        self.assertTrue((texture_root / f"{name}_selected.png").is_file())
        self.assertEqual(
            len(list(texture_root.glob(f"{name}_cooldown_*.png"))),
            26,
        )

        font = json.loads(
            (self.resource_pack / add_spell.FONT_ROOT / f"{name}.json").read_text()
        )
        self.assertEqual(len(font["providers"]), 28)
        self.assertEqual(font["providers"][0]["chars"], [chr(0xA100)])
        self.assertEqual(font["providers"][-1]["chars"], [chr(0xC126)])

        definitions = (self.data_pack / add_spell.DEFINITIONS_FILE).read_text()
        self.assertIn(f"gobal_spell_data {name} set value", definitions)
        self.assertEqual(definitions.count(f'"{name}"'), 3)

        registry = (self.data_pack / add_spell.REGISTRY_FILE).read_text()
        probe = (self.data_pack / add_spell.PROBE_FILE).read_text()
        refresh = (self.data_pack / add_spell.FORCE_REFRESH_FILE).read_text()
        player = (self.data_pack / add_spell.PLAYER_TICK_FILE).read_text()
        self.assertIn(f"in.cooldowns.{name}", registry)
        self.assertIn(f"out.cooldowns.{name}", probe)
        self.assertIn(f'{{spell:"{name}"}}', refresh)
        self.assertIn(f"in.cooldowns.{name}", player)

    def test_refuses_to_overwrite_without_force(self) -> None:
        arguments = {
            "raw_name": "codex_test_spell",
            "image_path": self.source_icon,
            "data_pack": self.data_pack,
            "resource_pack": self.resource_pack,
            "cooldown": 3,
        }
        add_spell.build_spell(**arguments)
        with self.assertRaises(add_spell.GeneratorError):
            add_spell.build_spell(**arguments)

        add_spell.build_spell(**arguments, force=True)
        definitions = (self.data_pack / add_spell.DEFINITIONS_FILE).read_text()
        registry = (self.data_pack / add_spell.REGISTRY_FILE).read_text()
        self.assertEqual(
            definitions.count("gobal_spell_data codex_test_spell set value"),
            1,
        )
        self.assertEqual(registry.count("in.cooldowns.codex_test_spell"), 1)


if __name__ == "__main__":
    unittest.main()
