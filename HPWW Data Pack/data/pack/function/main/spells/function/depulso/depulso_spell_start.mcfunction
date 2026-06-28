particle flash{color:-7641928} ~ ~1 ~ 0.5 0.5 0.5 1 1 force @a
execute at @s run summon armor_stand ~ ~ ~ {Tags:['depulso_entity_checker'], Invulnerable:1b}
execute as @e[type=armor_stand, tag=depulso_entity_checker] at @s run function pack:main/spells/function/depulso/function/check_near_entities
kill @s
