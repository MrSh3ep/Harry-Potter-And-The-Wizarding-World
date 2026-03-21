execute if score @s basic_cast_cooldown matches 1.. run scoreboard players remove @s basic_cast_cooldown 1

execute as @e[type=armor_stand, tag=basic_cast] if score @s basic_cast_lifetime matches 1.. run scoreboard players remove @s basic_cast_lifetime 1

#TP
execute as @e[type=armor_stand,tag=basic_cast] at @s run tp @s ^ ^ ^1.3


#Particle Trail
execute at @e[type=armor_stand, tag=basic_cast] run particle minecraft:copper_fire_flame ~ ~1 ~ 0.01 0.01 0.01 0.01 10 force

#Death And Effects
execute as @e[type=armor_stand, tag=basic_cast] if score @s basic_cast_lifetime matches 0 as @s at @s run function pack:main/spells/function/basic_cast/kill

#kill when hit blocks
execute as @e[type=armor_stand,tag=basic_cast] at @s unless block ~ ~0.5 ~ minecraft:air unless block ~ ~0.5 ~ #flowers unless block ~ ~0.5 ~ short_grass unless block ~ ~0.5 ~ tall_grass unless block ~ ~0.5 ~ bush unless block ~ ~0.5 ~ snow unless block ~ ~0.5 ~ firefly_bush run function pack:main/spells/function/basic_cast/kill

execute as @e[type=armor_stand, tag=basic_cast] at @s if entity @e[type=!item, distance=0.1..1.3] run function pack:main/spells/function/basic_cast/damage
