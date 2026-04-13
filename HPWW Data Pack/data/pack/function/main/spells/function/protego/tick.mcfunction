#comes from tick.mcfunction

execute if score @s protego_cooldown matches 1.. run scoreboard players remove @s protego_cooldown 1

# Copy cooldown into cooldown_seconds
scoreboard players operation @s protego_cooldown_visual = @s protego_cooldown

# Divide by 20
scoreboard players operation @s protego_cooldown_visual /= @s tick_const

execute if score @s protego_activated matches 1.. run scoreboard players remove @s protego_activated 1

execute if score @s protego_activated matches 1.. at @s run function pack:main/spells/function/protego/protego_function

execute if score @s protego_activated matches 0 if score @s protego_cooldown matches 2..75 at @s run function pack:main/spells/function/protego/protego_end

execute if score @s protego_block_timer matches 1.. run scoreboard players remove @s protego_block_timer 1

execute if score @s protego_block_timer matches 1.. at @s run function pack:main/spells/function/protego/block_tp_aj
