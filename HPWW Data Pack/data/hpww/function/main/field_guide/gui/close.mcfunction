function hpww:main/spells/function/api/uuid_selector/api/check_uuid {entity:"@e[type=interaction,tag=aj.field_guide_gui.interaction.exit_interaction,limit=1,sort=nearest]"}
execute unless score @s hpww.api.UUID_Selector matches 1 run return fail

# stuff that only runs if UUID matched
execute if score @s SettingsMenu.page.main matches 1 run tag @s remove hpww.field_guide.page_main

execute unless score @s SettingsMenuStatus matches 1 run return fail
scoreboard players set @s SettingsMenuStatus 0
scoreboard players set @s SettingsMenu.page.main 0

advancement revoke @s only hpww:blocks/main_wand/right_click_settings_button


execute as @e[tag=aj.field_guide_gui.root, distance=0..3, limit=1, sort=nearest] run \
    function aj:field_guide_gui/as_all_interactions {command: "kill @s"}

execute as @e[type=item_display,tag=aj.field_guide_gui.root, limit=1, sort=nearest] run function aj:field_guide_gui/animations/close_page_main/play



