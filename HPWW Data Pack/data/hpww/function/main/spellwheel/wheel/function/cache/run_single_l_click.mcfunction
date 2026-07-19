data remove storage pdb:main out
function pdb:get_me_cached

execute if score @s SelectedSlot matches 0 run function hpww:main/spellwheel/wheel/function/pages/left_click/detect/single_l_click with storage pdb:main out.spell_wheel_cache.page_1.draw_data
execute if score @s SelectedSlot matches 1 run function hpww:main/spellwheel/wheel/function/pages/left_click/detect/single_l_click with storage pdb:main out.spell_wheel_cache.page_2.draw_data
execute if score @s SelectedSlot matches 2 run function hpww:main/spellwheel/wheel/function/pages/left_click/detect/single_l_click with storage pdb:main out.spell_wheel_cache.page_3.draw_data
execute if score @s SelectedSlot matches 3 run function hpww:main/spellwheel/wheel/function/pages/left_click/detect/single_l_click with storage pdb:main out.spell_wheel_cache.page_4.draw_data
execute if score @s SelectedSlot matches 4 run function hpww:main/spellwheel/wheel/function/pages/left_click/detect/single_l_click with storage pdb:main out.spell_wheel_cache.page_5.draw_data
execute if score @s SelectedSlot matches 5 run function hpww:main/spellwheel/wheel/function/pages/left_click/detect/single_l_click with storage pdb:main out.spell_wheel_cache.page_6.draw_data
execute if score @s SelectedSlot matches 6 run function hpww:main/spellwheel/wheel/function/pages/left_click/detect/single_l_click with storage pdb:main out.spell_wheel_cache.page_7.draw_data
