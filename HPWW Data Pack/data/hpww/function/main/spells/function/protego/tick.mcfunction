#comes from tick.mcfunction

execute if score @s protego_activated matches 1.. run scoreboard players remove @s protego_activated 1

execute if score @s protego_activated matches 1.. at @s run function hpww:main/spells/function/protego/protego_function

function hpww:main/spells/function/api/spell_cooldown/read_cooldown_loaded {spell:"protego"}
execute if score @s protego_activated matches 0 if score @s cooldown_api matches 1.. at @s run function hpww:main/spells/function/protego/protego_end

execute if score @s protego_block_timer matches 1.. run scoreboard players remove @s protego_block_timer 1

execute if score @s protego_block_timer matches 1.. at @s run function hpww:main/spells/function/protego/block_tp_aj
