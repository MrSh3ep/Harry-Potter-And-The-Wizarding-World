execute if predicate pack:on_ground run return run advancement revoke @s only pack:blocks/main_wand/right_click_settings_button

function pack:main/spellwheel/wheel/function/close_wheel

scoreboard players set @s SettingsMenuStatus 1

tag @s add hpww.field_guide.page_main
execute rotated ~ 0 positioned ^ ^ ^0.5 run function aj:field_guide_gui/summon {args:{}}
tag @s remove hpww.field_guide.page_main

