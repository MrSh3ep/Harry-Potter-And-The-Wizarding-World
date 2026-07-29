#as the linked player to page_main

execute rotated ~ 0 positioned ^ ^ ^1.5 run function aj:fg_spell_wheel/summon {args:{}}
function hpww:main/spells/function/api/uuid_selector/api/link_entities {entity:"@e[tag=aj.fg_spell_wheel.entity,distance=0..2]"}

# stuff that only runs if UUID matched
tag @s remove hpww.field_guide.page_main

#scoreboard players set @s SettingsMenuStatus 0
scoreboard players set @s SettingsMenu.page.main 0
scoreboard players set @s SettingsMenu.page.spell_wheel 1
