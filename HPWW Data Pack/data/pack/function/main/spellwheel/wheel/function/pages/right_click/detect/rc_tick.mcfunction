execute unless score @s right_click_timer matches 0 run scoreboard players remove @s right_click_timer 1

execute if score @s right_click_count >= @s number_2 run return run function pack:main/spellwheel/wheel/function/cache/run_double_r_click

execute if score @s right_click_timer matches 0 if score @s right_click_count matches 1 run return run function pack:main/spellwheel/wheel/function/cache/run_single_r_click

