$data modify storage pack:cooldown_api current set value {spell:"$(spell)"}

scoreboard players set #remaining cooldown_api 0
scoreboard players set #paused cooldown_api 0
scoreboard players set #pause_timer cooldown_api 0
scoreboard players set #had_pause_timer cooldown_api 0
scoreboard players set #selected cooldown_api 0
scoreboard players set #selected_timer cooldown_api 0
scoreboard players set #had_selected_timer cooldown_api 0
scoreboard players set #global_paused cooldown_api 0
scoreboard players set #global_pause_timer cooldown_api 0

$execute store result score #remaining cooldown_api run data get storage pdb:main in.cooldowns.$(spell).remaining 1
$execute store result score #paused cooldown_api run data get storage pdb:main in.cooldowns.$(spell).paused 1
$execute store result score #pause_timer cooldown_api run data get storage pdb:main in.cooldowns.$(spell).pause_timer 1
$execute store result score #selected cooldown_api run data get storage pdb:main in.cooldowns.$(spell).selected 1
$execute store result score #selected_timer cooldown_api run data get storage pdb:main in.cooldowns.$(spell).selected_timer 1
execute if data storage pdb:main in.cooldowns{global_paused:1} run scoreboard players set #global_paused cooldown_api 1
execute store result score #global_pause_timer cooldown_api run data get storage pdb:main in.cooldowns.global_pause_timer 1

execute if score #pause_timer cooldown_api matches 1.. run scoreboard players set #had_pause_timer cooldown_api 1
execute if score #pause_timer cooldown_api matches 1.. run scoreboard players remove #pause_timer cooldown_api 1
$execute if score #had_pause_timer cooldown_api matches 1 run execute store result storage pdb:main in.cooldowns.$(spell).pause_timer int 1 run scoreboard players get #pause_timer cooldown_api
execute if score #had_pause_timer cooldown_api matches 1 run scoreboard players set #cooldown_api_changed cooldown_api 1

execute if score #selected_timer cooldown_api matches 1.. run scoreboard players set #had_selected_timer cooldown_api 1
execute if score #selected_timer cooldown_api matches 1.. run scoreboard players remove #selected_timer cooldown_api 1
$execute if score #had_selected_timer cooldown_api matches 1 run execute store result storage pdb:main in.cooldowns.$(spell).selected_timer int 1 run scoreboard players get #selected_timer cooldown_api
$execute if score #had_selected_timer cooldown_api matches 1 if score #selected_timer cooldown_api matches 0 run data modify storage pdb:main in.cooldowns.$(spell).selected set value 0
execute if score #had_selected_timer cooldown_api matches 1 if score #selected_timer cooldown_api matches 0 run scoreboard players set #selected cooldown_api 0
execute if score #had_selected_timer cooldown_api matches 1 run scoreboard players set #cooldown_api_changed cooldown_api 1

execute if score #remaining cooldown_api matches 1.. if score #global_paused cooldown_api matches 0 if score #global_pause_timer cooldown_api matches 0 if score #paused cooldown_api matches 0 if score #pause_timer cooldown_api matches 0 run scoreboard players set #cooldown_api_changed cooldown_api 1
execute if score #remaining cooldown_api matches 1.. if score #global_paused cooldown_api matches 0 if score #global_pause_timer cooldown_api matches 0 if score #paused cooldown_api matches 0 if score #pause_timer cooldown_api matches 0 run scoreboard players remove #remaining cooldown_api 1
$execute if score #cooldown_api_changed cooldown_api matches 1.. store result storage pdb:main in.cooldowns.$(spell).remaining int 1 run scoreboard players get #remaining cooldown_api

$execute if score #selected cooldown_api matches 1.. run data modify storage pack:cooldown_api icon set value {spell:"$(spell)",key_path:"Keys.Selected"}
execute if score #selected cooldown_api matches 1.. run function pack:main/spells/function/api/icons/apply_icon_to_storage with storage pack:cooldown_api icon
execute if score #selected cooldown_api matches 1.. run scoreboard players set @s spell_wheel_display_dirty 1
execute if score #selected cooldown_api matches 1.. run scoreboard players set @s spell_wheel_display_timer 0
execute if score #selected cooldown_api matches 1.. run return 0

$function pack:main/spells/function/api/icons/refresh_spell_icon_loaded {spell:"$(spell)"}
$execute if score #remaining cooldown_api matches 0 if score #paused cooldown_api matches 0 if score #pause_timer cooldown_api matches 0 if score #selected cooldown_api matches 0 if score #selected_timer cooldown_api matches 0 run data remove storage pdb:main in.cooldowns.$(spell)
execute if score #remaining cooldown_api matches 0 if score #paused cooldown_api matches 0 if score #pause_timer cooldown_api matches 0 if score #selected cooldown_api matches 0 if score #selected_timer cooldown_api matches 0 run scoreboard players set #cooldown_api_changed cooldown_api 1
