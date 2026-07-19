$data modify storage hpww:cooldown_api args set value {spell:"$(spell)",ticks:$(ticks)}
scoreboard players set @s cooldown_api_active 1

data remove storage pdb:main in
data remove storage pdb:main out
function pdb:get_me
data modify storage pdb:main in set from storage pdb:main out

scoreboard players set #flash_ticks cooldown_api 0
scoreboard players set #duration cooldown_api 0
execute store result score #flash_ticks cooldown_api run data get storage hpww:cooldown_api args.ticks 1
$execute store result score #duration cooldown_api run data get storage pdb:main in.cooldowns.$(spell).duration 1
scoreboard players operation #duration cooldown_api -= #flash_ticks cooldown_api
execute if score #duration cooldown_api matches ..0 run scoreboard players set #duration cooldown_api 1

$execute unless data storage pdb:main in.cooldowns.$(spell) run data modify storage pdb:main in.cooldowns.$(spell) set value {remaining:0,duration:0,stage:-99,paused:0,pause_timer:0,selected:0,selected_timer:0}
$data modify storage pdb:main in.cooldowns.$(spell) merge value {selected:1,stage:-1}
$execute store result storage pdb:main in.cooldowns.$(spell).selected_timer int 1 run data get storage hpww:cooldown_api args.ticks 1
$execute store result storage pdb:main in.cooldowns.$(spell).duration int 1 run scoreboard players get #duration cooldown_api

scoreboard players set #cooldown_api_changed cooldown_api 1
scoreboard players set #cooldown_icon_changed cooldown_api 1
$data modify storage hpww:cooldown_api icon set value {spell:"$(spell)",key_path:"Keys.Selected"}
function hpww:main/spells/function/api/spell_cooldown/icons/apply_icon_to_storage with storage hpww:cooldown_api icon
function pdb:save_me
scoreboard players set @s spell_wheel_cache_dirty 0
execute if score @s SpellWheelStatus matches 1 run function hpww:main/spellwheel/wheel/function/display/start
