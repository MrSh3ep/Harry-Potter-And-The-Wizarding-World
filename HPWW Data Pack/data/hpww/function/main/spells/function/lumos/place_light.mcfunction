

execute if data entity @s data{block:"minecraft:air"} run setblock ~ ~ ~ minecraft:light[level=15]
execute if data entity @s data{block:"minecraft:cave_air"} run setblock ~ ~ ~ minecraft:light[level=15]
execute if data entity @s data{block:"minecraft:water"} run setblock ~ ~ ~ minecraft:light[level=15, waterlogged=true]


