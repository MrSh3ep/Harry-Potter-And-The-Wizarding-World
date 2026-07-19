$data modify storage hpww:cooldown_api args set value {spell:"$(spell)",pause_mode:$(pause_mode),global:$(global)}
scoreboard players set @s cooldown_api_active 1

scoreboard players set #scaled cooldown_api 0
scoreboard players set #seconds cooldown_api 0
scoreboard players set #ticks cooldown_api 0
scoreboard players set #global_arg cooldown_api 0
execute store result score #global_arg cooldown_api run data get storage hpww:cooldown_api args.global 1
execute unless data storage hpww:cooldown_api args{pause_mode:"constant"} run execute store result score #scaled cooldown_api run data get storage hpww:cooldown_api args.pause_mode 1000
execute unless data storage hpww:cooldown_api args{pause_mode:"constant"} run scoreboard players operation #seconds cooldown_api = #scaled cooldown_api
execute unless data storage hpww:cooldown_api args{pause_mode:"constant"} run scoreboard players add #seconds cooldown_api 999
execute unless data storage hpww:cooldown_api args{pause_mode:"constant"} run scoreboard players operation #seconds cooldown_api /= #1000 cooldown_api
execute unless data storage hpww:cooldown_api args{pause_mode:"constant"} run scoreboard players operation #ticks cooldown_api = #seconds cooldown_api
execute unless data storage hpww:cooldown_api args{pause_mode:"constant"} run scoreboard players operation #ticks cooldown_api *= #20 cooldown_api

data remove storage pdb:main in
data remove storage pdb:main out
function pdb:get_me
data modify storage pdb:main in set from storage pdb:main out

$execute unless score #global_arg cooldown_api matches 1.. unless data storage pdb:main in.cooldowns.$(spell) run data modify storage pdb:main in.cooldowns.$(spell) set value {remaining:0,duration:0,stage:-99,paused:0,pause_timer:0,selected:0,selected_timer:0}

execute if score #global_arg cooldown_api matches 1.. if data storage hpww:cooldown_api args{pause_mode:"constant"} run data modify storage pdb:main in.cooldowns.global_paused set value 1
execute if score #global_arg cooldown_api matches 1.. unless data storage hpww:cooldown_api args{pause_mode:"constant"} store result storage pdb:main in.cooldowns.global_pause_timer int 1 run scoreboard players get #ticks cooldown_api

$execute unless score #global_arg cooldown_api matches 1.. if data storage hpww:cooldown_api args{pause_mode:"constant"} run data modify storage pdb:main in.cooldowns.$(spell).paused set value 1
$execute unless score #global_arg cooldown_api matches 1.. unless data storage hpww:cooldown_api args{pause_mode:"constant"} store result storage pdb:main in.cooldowns.$(spell).pause_timer int 1 run scoreboard players get #ticks cooldown_api

function pdb:save_me
