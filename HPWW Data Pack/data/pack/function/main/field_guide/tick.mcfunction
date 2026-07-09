
execute if score @s SettingsMenu.page.main matches 1 run function pack:main/spells/function/api/uuid_selector/api/as_at_linked_entity {entity:"@e[tag=aj.field_guide_gui.root,limit=1,sort=nearest, distance=3..]",function:"aj:field_guide_gui/animations/close_page_main/play"}

execute unless score @s hpww.api.UUID_Selector matches 1 run return fail

#################

scoreboard players set @s SettingsMenuStatus 0
scoreboard players set @s SettingsMenu.page.main 0
scoreboard players set @s hpww.api.UUID_Selector 0
advancement revoke @s only pack:blocks/main_wand/right_click_settings_button
