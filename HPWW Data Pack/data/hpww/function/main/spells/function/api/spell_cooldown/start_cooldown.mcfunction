$data modify storage hpww:cooldown_api args set value {spell:"$(spell)",time:$(time)}
scoreboard players set @s cooldown_api_active 1

scoreboard players set #scaled cooldown_api 0
scoreboard players set #seconds cooldown_api 0
scoreboard players set #ticks cooldown_api 0
execute store result score #scaled cooldown_api run data get storage hpww:cooldown_api args.time 1000
scoreboard players operation #seconds cooldown_api = #scaled cooldown_api
scoreboard players add #seconds cooldown_api 999
scoreboard players operation #seconds cooldown_api /= #1000 cooldown_api
scoreboard players operation #ticks cooldown_api = #seconds cooldown_api
scoreboard players operation #ticks cooldown_api *= #20 cooldown_api

data remove storage pdb:main in
data remove storage pdb:main out
function pdb:get_me
data modify storage pdb:main in set from storage pdb:main out

$data modify storage pdb:main in.cooldowns.$(spell) set value {remaining:0,duration:0,stage:-99,paused:0,pause_timer:0,selected:0,selected_timer:0}
$execute store result storage pdb:main in.cooldowns.$(spell).remaining int 1 run scoreboard players get #ticks cooldown_api
$execute store result storage pdb:main in.cooldowns.$(spell).duration int 1 run scoreboard players get #ticks cooldown_api

scoreboard players set #cooldown_api_changed cooldown_api 1
scoreboard players set #cooldown_icon_changed cooldown_api 0
$function hpww:main/spells/function/api/spell_cooldown/icons/refresh_spell_icon_loaded {spell:"$(spell)"}
function pdb:save_me
execute if score #cooldown_icon_changed cooldown_api matches 1.. run function hpww:main/spellwheel/wheel/function/cache/queue_refresh
