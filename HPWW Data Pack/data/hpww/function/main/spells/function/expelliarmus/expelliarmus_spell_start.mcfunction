particle flash{color:-6881280} ~ ~1 ~ 0.5 0.5 0.5 1 1 force @a
execute at @s run summon armor_stand ~ ~ ~ {Tags:['expelliarmus_entity_checker'], Invulnerable:1b}
execute as @e[distance=0..45,tag=expelliarmus_entity_checker,type=armor_stand] at @s run function hpww:main/spells/function/expelliarmus/function/check_for_player

kill @s
