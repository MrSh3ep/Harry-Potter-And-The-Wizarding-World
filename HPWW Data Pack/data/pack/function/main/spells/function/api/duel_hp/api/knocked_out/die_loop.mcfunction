scoreboard players operation @s knocked_out_timer_temp = @s knocked_out_timer
scoreboard players operation @s knocked_out_timer_temp /= @s number_20
scoreboard players operation @s knocked_out_timer_seconds = @s knocked_out_timer_temp


title @s actionbar [{text:"You Are Knocked Out! ", color:red}, {score:{name:"@s", objective:knocked_out_timer_seconds}, color:green}]
scoreboard players remove @s knocked_out_timer 1
execute as @s at @e[type=marker,limit=1,sort=nearest] run tp @s ~ ~ ~