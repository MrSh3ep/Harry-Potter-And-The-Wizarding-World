#as the linked player to page_main
execute rotated ~ 0 positioned ^ ^ ^1.5 run function aj:fg_spell_wheel/summon {args:{}}
function hpww:main/spells/function/api/uuid_selector/api/link_entities {entity:"@e[tag=aj.fg_spell_wheel.entity,distance=0..2]"}
# The slot interaction hitboxes are farther away than the wheel's display entities.
function hpww:main/spells/function/api/uuid_selector/api/link_entities {entity:"@e[type=interaction,tag=aj.fg_spell_wheel.interaction,distance=0..5]"}

# stuff that only runs if UUID matched
tag @s remove hpww.field_guide.page_main

#scoreboard players set @s SettingsMenuStatus 0
scoreboard players set @s SettingsMenu.page.main 0
scoreboard players set @s SettingsMenu.page.spell_wheel 1


#intilize drawer page
scoreboard players set @s hpww.fg.spell_wheel_page.drawer_page 1
function hpww:main/field_guide/gui/spell_wheel_page/load_drawer_pages/page_1_damage
#intilize wheel page
scoreboard players set @s hpww.fg.spell_wheel_page.wheel_page 1
function hpww:main/field_guide/gui/spell_wheel_page/load_wheel_pages/page_1

# Show this guide once per player; player/global reset clears the flag.
execute unless score @s hpww.fg.spell_wheel_page.notice_seen matches 1 run function hpww:main/field_guide/gui/spell_wheel_page/show_first_open_notice
