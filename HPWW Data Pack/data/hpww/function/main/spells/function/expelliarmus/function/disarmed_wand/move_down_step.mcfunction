execute at @s positioned ~ ~-0.065 ~ unless block ~ ~ ~ #hpww:spell_trail_passable at @s run function hpww:main/spells/function/expelliarmus/function/disarmed_wand/land
execute unless entity @s[tag=expelliarmus_wand_landed] at @s run tp @s ~ ~-0.05 ~
