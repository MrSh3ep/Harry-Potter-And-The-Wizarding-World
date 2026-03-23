kill @n[type=armor_stand, tag=protego_blockable, distance=0..3.5]

playsound entity.warden.sonic_boom master @a ~ ~ ~ 3

scoreboard players set @s protego_activated 0

effect give @s resistance 2 1 true
effect give @s instant_health 1 1 true

execute at @s run function pack:main/spells/function/protego/block_particles

execute at @s at @n[type=item_display, tag=aj.protego.root] run function animated_java:protego/remove/this

execute at @s run function animated_java:protego/summon
