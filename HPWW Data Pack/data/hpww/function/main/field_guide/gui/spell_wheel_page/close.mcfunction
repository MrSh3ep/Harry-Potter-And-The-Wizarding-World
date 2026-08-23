function hpww:main/spells/function/api/uuid_selector/api/check_uuid {entity:"@e[type=item_display,tag=aj.fg_spell_wheel.bone.exit,limit=1,sort=nearest]"}
execute unless score @s hpww.api.UUID_Selector matches 1 run return fail

# stuff that only runs if UUID matched

scoreboard players set @s SettingsMenu.page.main 1
scoreboard players set @s SettingsMenu.page.spell_wheel 0


execute as @e[tag=aj.fg_spell_wheel.root, distance=0..3, limit=1, sort=nearest] run \
    function aj:fg_spell_wheel/as_all_interactions {command: "kill @s"}

execute as @e[type=item_display,tag=aj.fg_spell_wheel.root, limit=1, sort=nearest] run function aj:fg_spell_wheel/animations/close/play