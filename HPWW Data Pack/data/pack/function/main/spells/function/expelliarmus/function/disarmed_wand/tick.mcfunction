execute as @e[type=item_display,tag=expelliarmus_disarmed_wand,tag=!expelliarmus_wand_landed] at @s run function pack:main/spells/function/expelliarmus/function/disarmed_wand/physics
execute as @e[type=interaction,tag=expelliarmus_wand_pickup] at @s unless entity @n[type=item_display,tag=expelliarmus_disarmed_wand,tag=expelliarmus_wand_landed,distance=..3] run kill @s
execute as @e[type=interaction,tag=expelliarmus_wand_pickup] at @s if data entity @s interaction run function pack:main/spells/function/expelliarmus/function/disarmed_wand/pickup
