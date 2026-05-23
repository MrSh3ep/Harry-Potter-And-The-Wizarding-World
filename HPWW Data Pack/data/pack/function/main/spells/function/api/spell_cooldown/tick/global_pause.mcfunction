scoreboard players set #global_pause_timer cooldown_api 0
scoreboard players set #had_global_pause_timer cooldown_api 0
execute store result score #global_pause_timer cooldown_api run data get storage pdb:main in.cooldowns.global_pause_timer 1

execute if score #global_pause_timer cooldown_api matches 1.. run scoreboard players set #had_global_pause_timer cooldown_api 1
execute if score #global_pause_timer cooldown_api matches 1.. run scoreboard players remove #global_pause_timer cooldown_api 1
execute if score #had_global_pause_timer cooldown_api matches 1 if score #global_pause_timer cooldown_api matches 1.. store result storage pdb:main in.cooldowns.global_pause_timer int 1 run scoreboard players get #global_pause_timer cooldown_api
execute if score #had_global_pause_timer cooldown_api matches 1 if score #global_pause_timer cooldown_api matches 0 run data remove storage pdb:main in.cooldowns.global_pause_timer
execute if score #had_global_pause_timer cooldown_api matches 1 run scoreboard players set #cooldown_api_changed cooldown_api 1
