particle flash{color:-795557} ~ ~1 ~ 0.5 0.5 0.5 1 1 force @a
execute at @s run summon armor_stand ~ ~ ~ {Tags:['levioso_player_checker'], Invulnerable:1b}
kill @s
execute as @e[type=armor_stand, tag=levioso_player_checker] at @s run function hpww:main/spells/function/levioso/function/check_for_player
