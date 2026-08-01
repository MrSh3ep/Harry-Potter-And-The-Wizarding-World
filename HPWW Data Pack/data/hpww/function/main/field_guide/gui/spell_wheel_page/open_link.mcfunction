#as the linked player to page_main

execute rotated ~ 0 positioned ^ ^ ^1.5 run function aj:fg_spell_wheel/summon {args:{}}
function hpww:main/spells/function/api/uuid_selector/api/link_entities {entity:"@e[tag=aj.fg_spell_wheel.entity,distance=0..2]"}

# stuff that only runs if UUID matched
tag @s remove hpww.field_guide.page_main

#scoreboard players set @s SettingsMenuStatus 0
scoreboard players set @s SettingsMenu.page.main 0
scoreboard players set @s SettingsMenu.page.spell_wheel 1

#intilize page_1
scoreboard players set @s hpww.fg.spell_wheel_page.drawer_page 1
function hpww:main/field_guide/gui/spell_wheel_page/load_drawer_pages/page_1_damage