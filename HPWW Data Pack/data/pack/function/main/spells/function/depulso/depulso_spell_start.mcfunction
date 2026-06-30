particle flash{color:-7641928} ~ ~1 ~ 0.5 0.5 0.5 1 1 force @a
tag @e[type=armor_stand,tag=depulso_hit_source] remove depulso_hit_source
tag @n[type=armor_stand,tag=spell_trail,tag=trail_color_depulso,distance=0..2,limit=1,sort=nearest] add depulso_hit_source
execute at @s run summon armor_stand ~ ~ ~ {Tags:['depulso_entity_checker'], Invulnerable:1b}
execute as @e[type=armor_stand, tag=depulso_entity_checker] at @s run function pack:main/spells/function/depulso/function/check_near_entities
tag @e[type=armor_stand,tag=depulso_hit_source] remove depulso_hit_source
kill @s
