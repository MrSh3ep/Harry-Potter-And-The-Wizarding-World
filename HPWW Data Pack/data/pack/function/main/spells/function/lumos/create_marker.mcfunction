data remove storage lumos_light block

execute if block ~ ~ ~ minecraft:light run return fail

execute if block ~ ~ ~ minecraft:air run data modify storage lumos_light block set value "minecraft:air"
execute if block ~ ~ ~ minecraft:cave_air run data modify storage lumos_light block set value "minecraft:cave_air"
execute if block ~ ~ ~ minecraft:water run data modify storage lumos_light block set value "minecraft:water"

#summon marker if there is air or water there.
execute if data storage lumos_light block run summon marker ~ ~ ~ {Tags:['light', 'init_me']}

scoreboard players operation @e[type=marker,tag=init_me,limit=1,sort=nearest] spell_uuid_0 = @s spell_uuid_0
scoreboard players operation @e[type=marker,tag=init_me,limit=1,sort=nearest] spell_uuid_1 = @s spell_uuid_1
scoreboard players operation @e[type=marker,tag=init_me,limit=1,sort=nearest] spell_uuid_2 = @s spell_uuid_2
scoreboard players operation @e[type=marker,tag=init_me,limit=1,sort=nearest] spell_uuid_3 = @s spell_uuid_3
data modify entity @e[type=marker, tag=init_me, limit=1, sort=nearest] data.block set from storage lumos_light block
execute as @e[type=marker, tag=init_me, limit=1, sort=nearest] at @s run function pack:main/spells/function/lumos/place_light
tag @e[type=marker, tag=init_me, limit=1, sort=nearest] remove init_me

data remove storage lumos_light block


