data remove storage pdb:main out
function pdb:get_me

execute unless score @s right_click_timer matches 0 run scoreboard players remove @s right_click_timer 1

execute if score @s right_click_count >= @s number_2 run return run function pack:main/spellwheel/wheel/function/pages/right_click/detect/double_r_click with storage pdb:main out.spell_wheel_draw_data

execute if score @s right_click_timer matches 0 if score @s right_click_count matches 1 run return run function pack:main/spellwheel/wheel/function/pages/right_click/detect/single_r_click with storage pdb:main out.spell_wheel_draw_data

