# HPWW Spell Generator

Run `py .\tools\add_spell.py` to open the small generator window. Enter one
lowercase spell id, choose one image, and click **Create Spell**.

The cleanest input is a finished `34x36` active spell-wheel icon. Other image
sizes are fitted into the existing `26x26` icon area automatically.

Command-line use is also supported:

```powershell
py tools/add_spell.py --name stupefy --image "C:\path\to\stupefy.png"
```

The generator creates:

- A dedicated resource-pack font for the spell.
- Active, selected, and all 26 cooldown textures.
- A three-second starter cooldown and a visible particle trail.
- A no-effect hit function at
  `data/hpww/function/main/spells/function/<spell>/function/hit.mcfunction`.
- Every cooldown API registration needed for off-wheel ticking and refreshes.

It intentionally does not edit the Field Guide spell-wheel settings page. After
`/reload`, bind a generated spell with:

```mcfunction
/function hpww:main/spells/function/api/bind_spell/api/bind {spell_name:"stupefy",slot:1,page:1}
```

Use `--cooldown 4.2` to choose another duration (rounded up), `--dry-run` to
preview paths, or `--force` to intentionally rebuild an existing generated
spell. The script uses Pillow for image generation.
