execute if predicate hpww:on_ground run return run advancement revoke @s only hpww:blocks/main_wand/right_click_settings_button

execute unless score @s hppw.field_guide.first_open_dialog matches 1 run function hpww:main/field_guide/gui/first_open
execute if score @s SpellWheelStatus matches 1 run function hpww:main/spellwheel/wheel/function/close_wheel

tag @s add hpww.field_guide.page_main

execute if score @s SettingsMenuStatus matches 0 rotated ~ 0 positioned ^ ^ ^1.5 run summon marker ^ ^ ^ {Tags:['hpww.fg_marker']}
rotate @e[tag=hpww.fg_marker, limit=1, sort=nearest,distance=0..3,type=marker] facing entity @p




execute if score @s SettingsMenuStatus matches 0 at @e[tag=hpww.fg_marker,distance=0..5, limit=1, sort=nearest, type=marker] run function aj:field_guide_gui/summon {args:{}}
execute if score @s SettingsMenuStatus matches 1 at @e[tag=hpww.fg_marker_binded,distance=0..1, limit=1, sort=nearest, type=marker] run function aj:field_guide_gui/summon {args:{}}
function hpww:main/spells/function/api/uuid_selector/api/link_entities {entity:"@e[tag=aj.field_guide_gui.entity,distance=0..5]"}
execute if score @s SettingsMenuStatus matches 0 run function hpww:main/spells/function/api/uuid_selector/api/link_entities {entity:"@e[tag=hpww.fg_marker, distance=0..5, limit=1, sort=nearest]"}
execute if score @s SettingsMenuStatus matches 0 run function hpww:main/spells/function/api/uuid_selector/api/as_at_linked_entities {entities:"@e[type=marker, tag=hpww.fg_marker, limit=1, sort=nearest, distance=0..5]", function:"hpww:main/field_guide/gui/fg_marker_bind"}



scoreboard players set @s SettingsMenuStatus 1
scoreboard players set @s SettingsMenu.page.main 1
