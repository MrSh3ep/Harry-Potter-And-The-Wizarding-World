scoreboard players remove @s left_click_advancement_cooldown 1
execute if score @s left_click_advancement_cooldown matches 1.. run return run advancement revoke @s only hpww:pages/lc_cooldown
scoreboard players reset @s left_click_advancement_cooldown