execute at @s positioned ^ ^0.08 ^0.16 unless block ~ ~ ~ #pack:spell_trail_passable at @s run function pack:main/spells/function/expelliarmus/function/disarmed_wand/bounce
execute unless entity @s[tag=expelliarmus_wand_bounced] at @s positioned ^ ^0.42 ^0.16 unless block ~ ~ ~ #pack:spell_trail_passable at @s run function pack:main/spells/function/expelliarmus/function/disarmed_wand/bounce
execute unless entity @s[tag=expelliarmus_wand_bounced] at @s positioned ^0.22 ^0.24 ^0.16 unless block ~ ~ ~ #pack:spell_trail_passable at @s run function pack:main/spells/function/expelliarmus/function/disarmed_wand/bounce
execute unless entity @s[tag=expelliarmus_wand_bounced] at @s positioned ^-0.22 ^0.24 ^0.16 unless block ~ ~ ~ #pack:spell_trail_passable at @s run function pack:main/spells/function/expelliarmus/function/disarmed_wand/bounce
execute unless entity @s[tag=expelliarmus_wand_bounced] at @s run tp @s ^ ^ ^0.12
