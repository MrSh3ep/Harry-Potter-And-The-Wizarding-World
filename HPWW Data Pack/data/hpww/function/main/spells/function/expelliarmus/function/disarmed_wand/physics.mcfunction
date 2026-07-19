scoreboard players add @s expelliarmus_wand_age 1

tag @s remove expelliarmus_wand_bounced

execute if score @s expelliarmus_wand_age matches ..3 run function hpww:main/spells/function/expelliarmus/function/disarmed_wand/move_forward_5
execute if score @s expelliarmus_wand_age matches 4..6 run function hpww:main/spells/function/expelliarmus/function/disarmed_wand/move_forward_5
execute if score @s expelliarmus_wand_age matches 7..9 run function hpww:main/spells/function/expelliarmus/function/disarmed_wand/move_forward_4
execute if score @s expelliarmus_wand_age matches 10..12 run function hpww:main/spells/function/expelliarmus/function/disarmed_wand/move_forward_4
execute if score @s expelliarmus_wand_age matches 13..15 run function hpww:main/spells/function/expelliarmus/function/disarmed_wand/move_forward_3
execute if score @s expelliarmus_wand_age matches 16..20 run function hpww:main/spells/function/expelliarmus/function/disarmed_wand/move_forward_2

execute if score @s expelliarmus_wand_age matches ..3 at @s run tp @s ~ ~0.20 ~
execute if score @s expelliarmus_wand_age matches 4..6 at @s run tp @s ~ ~0.12 ~
execute if score @s expelliarmus_wand_age matches 7..9 at @s run tp @s ~ ~0.04 ~
execute if score @s expelliarmus_wand_age matches 10..12 run function hpww:main/spells/function/expelliarmus/function/disarmed_wand/move_down_1
execute if score @s expelliarmus_wand_age matches 13..15 run function hpww:main/spells/function/expelliarmus/function/disarmed_wand/move_down_3
execute if score @s expelliarmus_wand_age matches 16..20 run function hpww:main/spells/function/expelliarmus/function/disarmed_wand/move_down_4
execute if score @s expelliarmus_wand_age matches 21.. run function hpww:main/spells/function/expelliarmus/function/disarmed_wand/move_down_3

execute unless entity @s[tag=expelliarmus_wand_landed] run function hpww:main/spells/function/expelliarmus/function/disarmed_wand/spin
execute unless entity @s[tag=expelliarmus_wand_landed] at @s unless block ~ ~-0.04 ~ #hpww:spell_trail_passable run function hpww:main/spells/function/expelliarmus/function/disarmed_wand/land
execute if score @s expelliarmus_wand_age matches 220.. run kill @s
