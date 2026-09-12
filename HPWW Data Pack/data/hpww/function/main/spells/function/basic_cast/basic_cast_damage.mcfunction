tag @e[type=armor_stand,tag=basic_cast_hit_source] remove basic_cast_hit_source
tag @n[type=armor_stand,tag=spell_trail,tag=trail_color_basic_cast,distance=0..2,limit=1,sort=nearest] add basic_cast_hit_source

damage @n[distance=0.1..1.4, type=!#hpww:excluded_checked_entities, nbt=!{Small:1b}] 3
execute if entity @n[type=!#hpww:excluded_checked_entities,distance=0.1..1.4,nbt=!{Small:1b}] run function hpww:main/spells/function/basic_cast/run_hit_sfx

scoreboard players add @n[tag=levioso_active, type=!#hpww:excluded_checked_entities, distance=0..2, nbt=!{Small:1b}] levioso_spell_active.hit_count 1
execute if entity @e[type=armor_stand,tag=basic_cast_hit_source,limit=1] as @n[type=!#hpww:excluded_checked_entities, distance=0.1..1.4, nbt=!{Small:1b}] at @s rotated as @e[type=armor_stand,tag=basic_cast_hit_source,limit=1] rotated ~ 0 run function hpww:main/spells/function/basic_cast/apply_hit_motion

particle crimson_spore ~ ~1 ~ 0.5 0.5 0.5 2 100 force
particle flash{color:-1762573513} ~ ~1 ~ 0.5 0.5 0.5 1 1 force @a
execute at @s run playsound minecraft:block.creaking_heart.step master @a[distance=0..20] ~ ~ ~ 3

#kills the temp armorstad (og made for location pourpouses only LOL)
tag @e[type=armor_stand,tag=basic_cast_hit_source] remove basic_cast_hit_source
kill @s
