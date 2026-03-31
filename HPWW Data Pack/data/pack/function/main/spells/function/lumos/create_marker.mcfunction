execute if block ~ ~ ~ minecraft:light run return fail


execute if block ~ ~ ~ #minecraft:air run data modify storage lumos_light block set value "minecraft:air"
execute if block ~ ~ ~ minecraft:water run data modify storage lumos_light block set value "minecraft:water"

#summon marker if there is air or water there.
execute if data storage lumos_light block run summon marker ~ ~ ~ {Tags:['light', 'init_me']}

data modify entity @e[type=marker, tag=init_me, limit=1] data.block set from storage lumos_light block
tag @e[type=marker, tag=init_me] remove init_me

data remove storage lumos_light block


