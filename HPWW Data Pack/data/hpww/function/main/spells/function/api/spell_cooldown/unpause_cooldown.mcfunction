$data modify storage hpww:cooldown_api args set value {spell:"$(spell)",global:$(global)}
scoreboard players set @s cooldown_api_active 1
scoreboard players set #global_arg cooldown_api 0
execute store result score #global_arg cooldown_api run data get storage hpww:cooldown_api args.global 1

data remove storage pdb:main in
data remove storage pdb:main out
function pdb:get_me_cached
data modify storage pdb:main in set from storage pdb:main out

$execute unless score #global_arg cooldown_api matches 1.. unless data storage pdb:main in.cooldowns.$(spell) run data modify storage pdb:main in.cooldowns.$(spell) set value {remaining:0,duration:0,stage:-99,paused:0,pause_timer:0,selected:0,selected_timer:0}

execute if score #global_arg cooldown_api matches 1.. run data modify storage pdb:main in.cooldowns.global_paused set value 0
execute if score #global_arg cooldown_api matches 1.. run data remove storage pdb:main in.cooldowns.global_pause_timer

$execute unless score #global_arg cooldown_api matches 1.. run data modify storage pdb:main in.cooldowns.$(spell).paused set value 0
$execute unless score #global_arg cooldown_api matches 1.. run data modify storage pdb:main in.cooldowns.$(spell).pause_timer set value 0

function pdb:save_me
