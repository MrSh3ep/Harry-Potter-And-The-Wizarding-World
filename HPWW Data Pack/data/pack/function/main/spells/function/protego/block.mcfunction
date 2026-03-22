kill @n[type=armor_stand, tag=protego_blockable, distance=0..3.5]
particle end_rod ~ ~1 ~ 0.5 0.5 0.5 0.5 200 force @a

playsound entity.warden.sonic_boom master @a ~ ~ ~ 3

scoreboard players set @s protego_activated 0

effect give @s resistance 2 1 true
effect give @s instant_health 1 1 true
