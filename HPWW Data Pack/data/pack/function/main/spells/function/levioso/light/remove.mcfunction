fill ~ ~ ~ ~ ~ ~ minecraft:water replace minecraft:light[waterlogged=true] strict
execute if entity @s[tag=levioso_light_cave_air] run fill ~ ~ ~ ~ ~ ~ minecraft:cave_air replace minecraft:light strict
fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:light strict
tp @s ~ 320 ~
kill @s
