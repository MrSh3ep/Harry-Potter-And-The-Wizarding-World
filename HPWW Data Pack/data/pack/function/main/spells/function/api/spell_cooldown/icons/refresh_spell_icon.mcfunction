$data modify storage pack:cooldown_api current set value {spell:"$(spell)"}

data remove storage pdb:main in
data remove storage pdb:main out
function pdb:get_me
data modify storage pdb:main in set from storage pdb:main out

scoreboard players set #cooldown_api_changed cooldown_api 0
scoreboard players set #cooldown_icon_changed cooldown_api 0
$function pack:main/spells/function/api/spell_cooldown/icons/refresh_spell_icon_loaded {spell:"$(spell)"}

execute if score #cooldown_api_changed cooldown_api matches 1.. run function pdb:save_me
execute if score #cooldown_icon_changed cooldown_api matches 1.. run function pack:main/spellwheel/wheel/function/cache/queue_refresh
