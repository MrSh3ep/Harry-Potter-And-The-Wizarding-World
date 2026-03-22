summon armor_stand ^ ^ ^0.2 {Tags:[basic_cast, temp_needs_cooldown, protego_blockable], NoGravity:true, Invulnerable:true, Invisible:true, Small:true}

execute as @n[type=armor_stand, tag=temp_needs_cooldown] run scoreboard players set @s basic_cast_lifetime 20
rotate @n[type=armor_stand,tag=temp_needs_cooldown] ~ ~ 

tag @n remove temp_needs_cooldown

playsound minecraft:entity.breeze.jump master @a ~ ~ ~ 3

#tp done in tick function