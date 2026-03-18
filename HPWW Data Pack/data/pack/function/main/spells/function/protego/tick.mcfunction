#comes from tick.mcfunction

execute as @a unless score @s protego_cooldown matches 0 run scoreboard players remove @s protego_cooldown 1

# Copy cooldown into cooldown_seconds
scoreboard players operation @s protego_cooldown_visual = @s protego_cooldown

# Divide by 20
scoreboard players operation @s protego_cooldown_visual /= @s tick_const
