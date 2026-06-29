execute unless entity @n[type=item_display,tag=expelliarmus_disarmed_wand,tag=expelliarmus_wand_landed,distance=..3] run kill @s
execute unless entity @n[type=item_display,tag=expelliarmus_disarmed_wand,tag=expelliarmus_wand_landed,distance=..3] run return fail
execute store result score #expelliarmus_pickup_0 spell_uuid_0 run data get entity @s interaction.player[0]
execute store result score #expelliarmus_pickup_1 spell_uuid_1 run data get entity @s interaction.player[1]
execute store result score #expelliarmus_pickup_2 spell_uuid_2 run data get entity @s interaction.player[2]
execute store result score #expelliarmus_pickup_3 spell_uuid_3 run data get entity @s interaction.player[3]
execute as @a[distance=..6] if score @s spell_uuid_0 = #expelliarmus_pickup_0 spell_uuid_0 if score @s spell_uuid_1 = #expelliarmus_pickup_1 spell_uuid_1 if score @s spell_uuid_2 = #expelliarmus_pickup_2 spell_uuid_2 if score @s spell_uuid_3 = #expelliarmus_pickup_3 spell_uuid_3 run function pack:main/spells/function/expelliarmus/function/disarmed_wand/pickup_player
