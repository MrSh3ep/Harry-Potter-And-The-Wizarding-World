# A successful Field Guide bind consumes the selected drawer spell.
data remove storage pdb:main in
data remove storage pdb:main out
function pdb:get_me_cached
data modify storage pdb:main in set from storage pdb:main out
data remove storage pdb:main in.bind_spell.SpellData
function pdb:save_me

# Clear transient bind arguments and the selected drawer-slot state.
data remove storage hpww:bind_spell_api args
data remove storage hpww:drawer_spell_selection args
scoreboard players reset @s hpww.drawer_selected_slot

# Re-load the active drawer category so its selected slot returns to its normal unlocked variant.
execute if score @s hpww.fg.spell_wheel_page.drawer_page matches 1 run return run function hpww:main/field_guide/gui/spell_wheel_page/load_drawer_pages/page_1_damage
execute if score @s hpww.fg.spell_wheel_page.drawer_page matches 2 run return run function hpww:main/field_guide/gui/spell_wheel_page/load_drawer_pages/page_2_control
execute if score @s hpww.fg.spell_wheel_page.drawer_page matches 3 run return run function hpww:main/field_guide/gui/spell_wheel_page/load_drawer_pages/page_3_force
execute if score @s hpww.fg.spell_wheel_page.drawer_page matches 4 run return run function hpww:main/field_guide/gui/spell_wheel_page/load_drawer_pages/page_4_utility
execute if score @s hpww.fg.spell_wheel_page.drawer_page matches 5 run return run function hpww:main/field_guide/gui/spell_wheel_page/load_drawer_pages/page_5_curses
execute if score @s hpww.fg.spell_wheel_page.drawer_page matches 6 run return run function hpww:main/field_guide/gui/spell_wheel_page/load_drawer_pages/page_6_other_1
execute if score @s hpww.fg.spell_wheel_page.drawer_page matches 7 run return run function hpww:main/field_guide/gui/spell_wheel_page/load_drawer_pages/page_7_other_2
execute if score @s hpww.fg.spell_wheel_page.drawer_page matches 8 run return run function hpww:main/field_guide/gui/spell_wheel_page/load_drawer_pages/page_8_other_3
execute if score @s hpww.fg.spell_wheel_page.drawer_page matches 9 run return run function hpww:main/field_guide/gui/spell_wheel_page/load_drawer_pages/page_9_other_4
execute if score @s hpww.fg.spell_wheel_page.drawer_page matches 10 run return run function hpww:main/field_guide/gui/spell_wheel_page/load_drawer_pages/page_10_other_5
