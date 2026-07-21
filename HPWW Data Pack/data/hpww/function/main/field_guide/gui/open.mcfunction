execute if predicate hpww:on_ground run return run advancement revoke @s only hpww:blocks/main_wand/right_click_settings_button

function hpww:main/spellwheel/wheel/function/close_wheel

scoreboard players set @s SettingsMenuStatus 1
scoreboard players set @s SettingsMenu.page.main 1





tag @s add hpww.field_guide.page_main
execute rotated ~ 0 positioned ^ ^ ^1.5 run function aj:field_guide_gui/summon {args:{}}
function hpww:main/spells/function/api/uuid_selector/api/link_entities {entity:"@e[tag=aj.field_guide_gui.entity,distance=0..5]"}

