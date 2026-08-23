playsound ui.button.click master @s ~ ~ ~ 0.2




execute unless score @s hpww.fg.spell_wheel_page.wheel_page matches 1 run scoreboard players remove @s hpww.fg.spell_wheel_page.wheel_page 1
execute if score @s hpww.fg.spell_wheel_page.wheel_page matches 1 run return run function hpww:main/field_guide/gui/spell_wheel_page/load_wheel_pages/page_1
execute if score @s hpww.fg.spell_wheel_page.wheel_page matches 2 run return run function hpww:main/field_guide/gui/spell_wheel_page/load_wheel_pages/page_2
execute if score @s hpww.fg.spell_wheel_page.wheel_page matches 3 run return run function hpww:main/field_guide/gui/spell_wheel_page/load_wheel_pages/page_3
execute if score @s hpww.fg.spell_wheel_page.wheel_page matches 4 run return run function hpww:main/field_guide/gui/spell_wheel_page/load_wheel_pages/page_4
execute if score @s hpww.fg.spell_wheel_page.wheel_page matches 5 run return run function hpww:main/field_guide/gui/spell_wheel_page/load_wheel_pages/page_5
execute if score @s hpww.fg.spell_wheel_page.wheel_page matches 6 run return run function hpww:main/field_guide/gui/spell_wheel_page/load_wheel_pages/page_6
execute if score @s hpww.fg.spell_wheel_page.wheel_page matches 7 run return run function hpww:main/field_guide/gui/spell_wheel_page/load_wheel_pages/page_7