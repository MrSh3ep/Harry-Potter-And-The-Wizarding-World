$data modify storage hpww:cooldown_api args set value {spell:"$(spell)",operation:"$(operation)",value:$(value)}
scoreboard players set @s cooldown_api_active 1

scoreboard players set #scaled cooldown_api 0
scoreboard players set #seconds cooldown_api 0
scoreboard players set #ticks cooldown_api 0
scoreboard players set #remaining cooldown_api 0
scoreboard players set #duration cooldown_api 0
execute store result score #scaled cooldown_api run data get storage hpww:cooldown_api args.value 1000
scoreboard players operation #seconds cooldown_api = #scaled cooldown_api
scoreboard players add #seconds cooldown_api 999
scoreboard players operation #seconds cooldown_api /= #1000 cooldown_api
scoreboard players operation #ticks cooldown_api = #seconds cooldown_api
scoreboard players operation #ticks cooldown_api *= #20 cooldown_api

data remove storage pdb:main in
data remove storage pdb:main out
function pdb:get_me
data modify storage pdb:main in set from storage pdb:main out

$execute unless data storage pdb:main in.cooldowns.$(spell) run data modify storage pdb:main in.cooldowns.$(spell) set value {remaining:0,duration:0,stage:-99,paused:0,pause_timer:0,selected:0,selected_timer:0}
$execute store result score #remaining cooldown_api run data get storage pdb:main in.cooldowns.$(spell).remaining 1
$execute store result score #duration cooldown_api run data get storage pdb:main in.cooldowns.$(spell).duration 1

execute if data storage hpww:cooldown_api args{operation:"addition"} run scoreboard players operation #remaining cooldown_api += #ticks cooldown_api
execute if data storage hpww:cooldown_api args{operation:"subtraction"} run scoreboard players operation #remaining cooldown_api -= #ticks cooldown_api
execute if score #remaining cooldown_api matches ..0 run scoreboard players set #remaining cooldown_api 0
execute if score #duration cooldown_api matches ..0 run scoreboard players operation #duration cooldown_api = #remaining cooldown_api

$execute store result storage pdb:main in.cooldowns.$(spell).remaining int 1 run scoreboard players get #remaining cooldown_api
$execute store result storage pdb:main in.cooldowns.$(spell).duration int 1 run scoreboard players get #duration cooldown_api
$data modify storage pdb:main in.cooldowns.$(spell).selected set value 0
$data modify storage pdb:main in.cooldowns.$(spell).selected_timer set value 0
$data modify storage pdb:main in.cooldowns.$(spell).stage set value -99

scoreboard players set #cooldown_api_changed cooldown_api 1
scoreboard players set #cooldown_icon_changed cooldown_api 0
$function hpww:main/spells/function/api/spell_cooldown/icons/refresh_spell_icon_loaded {spell:"$(spell)"}
function pdb:save_me
execute if score #cooldown_icon_changed cooldown_api matches 1.. run function hpww:main/spellwheel/wheel/function/cache/queue_refresh
