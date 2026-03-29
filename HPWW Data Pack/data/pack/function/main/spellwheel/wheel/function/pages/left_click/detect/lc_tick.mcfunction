

data remove storage pdb:main out
function pdb:get_me

execute unless score @s left_click_timer matches 0 run scoreboard players remove @s left_click_timer 1

execute if score @s left_click_count >= @s number_2 run return run function pack:main/spellwheel/wheel/function/pages/left_click/detect/double_l_click with storage pdb:main out.spell_wheel_draw_data

execute if score @s left_click_count matches 1 if predicate pack:detectshift run return run execute as @s at @s run return run function pack:main/spells/function/basic_cast/basic_cast_start

execute if score @s left_click_timer matches 0 if score @s left_click_count matches 1 run return run function pack:main/spellwheel/wheel/function/pages/left_click/detect/single_l_click with storage pdb:main out.spell_wheel_draw_data


