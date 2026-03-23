execute if entity @e[type=armor_stand, tag=protego_blockable, distance=0..3.5] run function pack:main/spells/function/protego/block

execute as @s run tp @n[tag=aj.protego.root, type=item_display] ~ ~0.01 ~ ~ 0

effect give @s slowness 1 1 true




