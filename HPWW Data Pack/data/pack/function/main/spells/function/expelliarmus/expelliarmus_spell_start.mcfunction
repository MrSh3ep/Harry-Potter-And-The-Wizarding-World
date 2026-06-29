particle flash{color:-6881280} ~ ~1 ~ 0.5 0.5 0.5 1 1 force @a
execute at @s run summon armor_stand ~ ~ ~ {Tags:['expelliarmus_entity_checker'], Invulnerable:1b}
execute as @e[type=armor_stand, tag=expelliarmus_entity_checker] at @s run function pack:main/spells/function/expelliarmus/function/check_near_entities
kill @s
