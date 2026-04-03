summon armor_stand ^ ^ ^ {Tags:[basic_cast, temp_needs_cooldown, protego_blockable], NoGravity:true, Invulnerable:true, Invisible:true, Small:true}

execute as @n[type=armor_stand, tag=temp_needs_cooldown] run scoreboard players set @s basic_cast_lifetime 20
scoreboard players operation @n[type=armor_stand, tag=temp_needs_cooldown, limit=1, sort=nearest] spell_uuid_0 = @s spell_uuid_0
scoreboard players operation @n[type=armor_stand, tag=temp_needs_cooldown, limit=1, sort=nearest] spell_uuid_1 = @s spell_uuid_1
scoreboard players operation @n[type=armor_stand, tag=temp_needs_cooldown, limit=1, sort=nearest] spell_uuid_2 = @s spell_uuid_2
scoreboard players operation @n[type=armor_stand, tag=temp_needs_cooldown, limit=1, sort=nearest] spell_uuid_3 = @s spell_uuid_3
rotate @n[type=armor_stand,tag=temp_needs_cooldown] ~ ~ 

tag @n remove temp_needs_cooldown

playsound minecraft:entity.breeze.jump master @a ~ ~ ~ 3

#tp done in tick function
