function hpww:main/spells/function/api/uuid_selector/api/check_uuid {entity:"@e[type=interaction,tag=aj.field_guide_gui.interaction.exit_interaction,limit=1,sort=nearest]"}
execute unless score @s hpww.api.UUID_Selector matches 1 run return fail

# stuff that only runs if UUID matched
execute if score @s SettingsMenu.page.main matches 1 run tag @s remove hpww.field_guide.page_main


scoreboard players set @s SettingsMenu.page.main 0

advancement revoke @s only hpww:blocks/main_wand/right_click_settings_button


execute as @e[tag=aj.field_guide_gui.root, distance=0..3, limit=1, sort=nearest, type=interaction] run function aj:field_guide_gui/as_all_interactions {command: "kill @s"}

execute as @e[tag=aj.field_guide_gui.root, limit=1, sort=nearest, distance=0..5, type=item_display,] run function aj:field_guide_gui/animations/close_page_main/play

function hpww:main/spells/function/api/uuid_selector/api/as_at_linked_entities {entities:"@e[type=marker, tag=hpww.fg_marker_binded, limit=1, sort=nearest, distance=0..5]", function:"hpww:main/field_guide/gui/kill_marker"}
scoreboard players set @s SettingsMenuStatus 0
