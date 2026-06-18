kill @n[type=armor_stand, tag=protego_block_target, distance=0..3.5]
tag @e[type=armor_stand, tag=protego_block_target, distance=0..3.5] remove protego_block_target

playsound minecraft:entity.breeze.death master @a ~ ~ ~ 3

scoreboard players set @s protego_activated 0
scoreboard players set @s protego_block_timer 17

effect give @s resistance 2 1 true
effect give @s instant_health 1 1 true
function pack:main/spells/function/api/duel_hp/api/current_hp/add_current {score:5}

execute at @s run function pack:main/spells/function/protego/block_particles


execute at @s as @e[type=item_display, tag=aj.protego.root, limit=1, sort=nearest] run function animated_java:protego/animations/protego_block/play
