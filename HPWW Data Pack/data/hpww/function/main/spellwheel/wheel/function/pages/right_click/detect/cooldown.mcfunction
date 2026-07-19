scoreboard players remove @s right_click_advancement_cooldown 1
execute if score @s right_click_advancement_cooldown matches 1.. run return run advancement revoke @s only hpww:pages/rc_cooldown
scoreboard players reset @s right_click_advancement_cooldown