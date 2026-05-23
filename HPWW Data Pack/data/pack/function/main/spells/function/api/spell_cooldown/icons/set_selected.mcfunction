$data modify storage pack:cooldown_api args set value {spell:"$(spell)",selected:$(selected)}
scoreboard players set @s cooldown_api_active 1

scoreboard players set #selected_arg cooldown_api 0
execute store result score #selected_arg cooldown_api run data get storage pack:cooldown_api args.selected 1

data remove storage pdb:main in
data remove storage pdb:main out
function pdb:get_me
data modify storage pdb:main in set from storage pdb:main out

$execute unless data storage pdb:main in.cooldowns.$(spell) run data modify storage pdb:main in.cooldowns.$(spell) set value {remaining:0,duration:0,stage:-99,paused:0,pause_timer:0,selected:0,selected_timer:0}
$execute if score #selected_arg cooldown_api matches 1.. run data modify storage pdb:main in.cooldowns.$(spell) merge value {selected:1,selected_timer:0,stage:-1}
$execute unless score #selected_arg cooldown_api matches 1.. run data modify storage pdb:main in.cooldowns.$(spell) merge value {selected:0,selected_timer:0,stage:-99}

scoreboard players set #cooldown_api_changed cooldown_api 1
scoreboard players set #cooldown_icon_changed cooldown_api 0
$execute if score #selected_arg cooldown_api matches 1.. run data modify storage pack:cooldown_api icon set value {spell:"$(spell)",key_path:"Keys.Selected"}
execute if score #selected_arg cooldown_api matches 1.. run function pack:main/spells/function/api/spell_cooldown/icons/apply_icon_to_storage with storage pack:cooldown_api icon
execute if score #selected_arg cooldown_api matches 1.. run scoreboard players set #cooldown_icon_changed cooldown_api 1
$execute unless score #selected_arg cooldown_api matches 1.. run function pack:main/spells/function/api/spell_cooldown/icons/refresh_spell_icon_loaded {spell:"$(spell)"}
function pdb:save_me
execute if score #cooldown_icon_changed cooldown_api matches 1.. run function pack:main/spellwheel/wheel/function/cache/queue_refresh
execute if score #cooldown_icon_changed cooldown_api matches 1.. if score @s SpellWheelStatus matches 1 run function pack:main/spellwheel/wheel/function/display/start
