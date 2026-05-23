scoreboard players set @s cooldown_api_probe 20

data remove storage pdb:main out
function pdb:get_me

execute if data storage pdb:main out.cooldowns.lumos run scoreboard players set @s cooldown_api_active 1
execute if data storage pdb:main out.cooldowns.levioso run scoreboard players set @s cooldown_api_active 1
execute if data storage pdb:main out.cooldowns.protego run scoreboard players set @s cooldown_api_active 1
execute if data storage pdb:main out.cooldowns{global_paused:1} run scoreboard players set @s cooldown_api_active 1
execute if data storage pdb:main out.cooldowns.global_pause_timer run scoreboard players set @s cooldown_api_active 1
