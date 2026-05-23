data remove storage pdb:main in
data remove storage pdb:main out
function pdb:get_me
data modify storage pdb:main in set from storage pdb:main out

$execute unless data storage pdb:main in.cooldowns.$(spell) run data modify storage pdb:main in.cooldowns.$(spell) set value {remaining:0,duration:0,stage:-99,paused:0,pause_timer:0,selected:0,selected_timer:0}
$data modify storage pdb:main in.cooldowns.$(spell).stage set value -99

scoreboard players set #cooldown_api_changed cooldown_api 1
scoreboard players set #cooldown_icon_changed cooldown_api 0
$function pack:main/spells/function/api/spell_cooldown/icons/refresh_spell_icon_loaded {spell:"$(spell)"}
function pdb:save_me
execute if score #cooldown_icon_changed cooldown_api matches 1.. run function pack:main/spellwheel/wheel/function/cache/queue_refresh
