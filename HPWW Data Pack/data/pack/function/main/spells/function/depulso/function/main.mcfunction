#executes as the entity that was hit
execute at @s run playsound pack:depulso_hit master @a[distance=0..20] ~ ~ ~ 1 1
execute rotated as @n[type=armor_stand, tag=spell_trail, tag=trail_color_yellow, distance=0..2, limit=1, sort=nearest] rotated ~ 0 run function pack:main/spells/function/depulso/function/apply_motion
