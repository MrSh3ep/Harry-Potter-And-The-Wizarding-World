execute if score @s new_player_storage matches 0 run function pdb:new_player

data remove storage pdb:main in
data remove storage pdb:main out
function pdb:get_me
data modify storage pdb:main in set from storage pdb:main out

scoreboard players set #cooldown_api_changed cooldown_api 0
scoreboard players set #cooldown_icon_changed cooldown_api 0

function pack:main/spells/function/api/spell_cooldown/tick/global_pause
function pack:main/spells/function/api/spell_cooldown/tick/registry

execute at @s run function pack:main/spells/function/protego/tick

execute if score @s cooldown_api matches 1.. run scoreboard players set @s protego_spell_wheel_value 5
execute if score @s cooldown_api matches 0 run scoreboard players set @s protego_spell_wheel_value 4

execute if score #cooldown_api_changed cooldown_api matches 1.. run function pdb:save_me
execute if score #cooldown_icon_changed cooldown_api matches 1.. run function pack:main/spellwheel/wheel/function/cache/queue_refresh






###############################################################
# add a unless data storage pdb:main in.cooldowns.UR SPELL HERE
execute unless data storage pdb:main in.cooldowns.depulso unless data storage pdb:main in.cooldowns.lumos unless data storage pdb:main in.cooldowns.levioso unless data storage pdb:main in.cooldowns.protego unless data storage pdb:main in.cooldowns{global_paused:1} unless data storage pdb:main in.cooldowns.global_pause_timer run scoreboard players set @s cooldown_api_active 0
