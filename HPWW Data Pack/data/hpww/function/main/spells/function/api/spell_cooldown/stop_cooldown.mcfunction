$data modify storage hpww:cooldown_api args set value {spell:"$(spell)",trigger_function:"$(trigger_function)"}
scoreboard players set @s cooldown_api_active 1

data remove storage pdb:main in
data remove storage pdb:main out
function pdb:get_me
data modify storage pdb:main in set from storage pdb:main out

$data modify storage pdb:main in.cooldowns.$(spell) set value {remaining:0,duration:0,stage:-99,paused:0,pause_timer:0,selected:0,selected_timer:0}

scoreboard players set #cooldown_api_changed cooldown_api 1
scoreboard players set #cooldown_icon_changed cooldown_api 0
$function hpww:main/spells/function/api/spell_cooldown/icons/refresh_spell_icon_loaded {spell:"$(spell)"}
function pdb:save_me
execute if score #cooldown_icon_changed cooldown_api matches 1.. run function hpww:main/spellwheel/wheel/function/cache/queue_refresh
$execute unless data storage hpww:cooldown_api args{trigger_function:"none"} at @s run function $(trigger_function)
