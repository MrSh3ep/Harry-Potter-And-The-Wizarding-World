#executes as the entity that was hit
scoreboard players set @s levioso_spell_active.timer 1
execute at @s run playsound hpww:depulso_hit player @a[distance=0..20] ~ ~ ~ 1 1
execute if entity @e[type=armor_stand,tag=depulso_hit_source,limit=1] rotated as @e[type=armor_stand,tag=depulso_hit_source,limit=1] rotated ~ 0 run function hpww:main/spells/function/depulso/function/apply_motion
