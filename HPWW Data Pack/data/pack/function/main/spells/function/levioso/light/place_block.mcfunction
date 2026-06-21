fill ~ ~ ~ ~ ~ ~ minecraft:light[waterlogged=true,level=15] replace minecraft:water[level=0] strict
execute if block ~ ~ ~ minecraft:cave_air run tag @s add levioso_light_cave_air
execute unless block ~ ~ ~ minecraft:light run fill ~ ~ ~ ~ ~ ~ minecraft:light[waterlogged=false,level=15] replace #pack:levioso_light_air strict
