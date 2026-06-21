


execute if data entity @s data{block:"minecraft:air"} run setblock ~ ~ ~ air
execute if data entity @s data{block:"minecraft:cave_air"} run setblock ~ ~ ~ cave_air
execute if data entity @s data{block:"minecraft:water"} run setblock ~ ~ ~ water

kill @s
