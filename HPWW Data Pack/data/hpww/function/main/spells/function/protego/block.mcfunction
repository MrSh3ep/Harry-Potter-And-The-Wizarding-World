kill @n[type=armor_stand, tag=protego_block_target, distance=0..3.5]
tag @e[type=armor_stand, tag=protego_block_target, distance=0..3.5] remove protego_block_target

playsound minecraft:entity.breeze.death master @a ~ ~ ~ 3

scoreboard players set @s protego_activated 0
scoreboard players set @s protego_block_timer 17

effect give @s resistance 2 1 true
effect give @s instant_health 1 1 true

execute at @s run function hpww:main/spells/function/protego/block_particles


execute at @s as @e[type=item_display, tag=aj.protego.root, limit=1, sort=nearest] run function aj:protego/animations/protego_block/play
