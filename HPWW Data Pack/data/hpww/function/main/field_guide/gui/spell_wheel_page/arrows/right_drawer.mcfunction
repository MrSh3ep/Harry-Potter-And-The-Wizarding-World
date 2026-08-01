execute unless score @s hpww.fg.spell_wheel_page.drawer_page matches 10 run scoreboard players add @s hpww.fg.spell_wheel_page.drawer_page 1
execute if score @s hpww.fg.spell_wheel_page.drawer_page matches 1 run return run function hpww:main/field_guide/gui/spell_wheel_page/load_drawer_pages/page_1_damage
execute if score @s hpww.fg.spell_wheel_page.drawer_page matches 2 run return run function hpww:main/field_guide/gui/spell_wheel_page/load_drawer_pages/page_2_control
