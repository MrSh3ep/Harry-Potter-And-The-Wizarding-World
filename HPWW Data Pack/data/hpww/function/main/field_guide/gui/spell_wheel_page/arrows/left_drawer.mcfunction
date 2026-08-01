execute unless score @s hpww.fg.spell_wheel_page.drawer_page matches 1 run scoreboard players remove @s hpww.fg.spell_wheel_page.drawer_page 1

execute if score @s hpww.fg.spell_wheel_page.drawer_page matches 1 run return run function hpww:main/field_guide/gui/spell_wheel_page/load_drawer_pages/page_1_damage
execute if score @s hpww.fg.spell_wheel_page.drawer_page matches 2 run return run function hpww:main/field_guide/gui/spell_wheel_page/load_drawer_pages/page_2_control
execute if score @s hpww.fg.spell_wheel_page.drawer_page matches 3 run return run function hpww:main/field_guide/gui/spell_wheel_page/load_drawer_pages/page_3_force
execute if score @s hpww.fg.spell_wheel_page.drawer_page matches 4 run return run function hpww:main/field_guide/gui/spell_wheel_page/load_drawer_pages/page_4_utility


