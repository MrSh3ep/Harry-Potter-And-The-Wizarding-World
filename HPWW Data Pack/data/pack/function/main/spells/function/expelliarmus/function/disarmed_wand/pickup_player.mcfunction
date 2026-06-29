execute unless entity @n[type=item_display,tag=expelliarmus_disarmed_wand,tag=expelliarmus_wand_landed,distance=..3] run return fail
data remove storage pack:expelliarmus_disarm pickup_item
data modify storage pack:expelliarmus_disarm pickup_item set from entity @n[type=item_display,tag=expelliarmus_disarmed_wand,tag=expelliarmus_wand_landed,distance=..3] item
execute at @s run summon item ~ ~0.2 ~ {PickupDelay:0,Age:-32768,Tags:["expelliarmus_return_item","expelliarmus_new_return_item"],Item:{id:"minecraft:stone",count:1}}
execute at @s run data modify entity @n[type=item,tag=expelliarmus_new_return_item,distance=..1.2] Item set from storage pack:expelliarmus_disarm pickup_item
execute at @s run data modify entity @n[type=item,tag=expelliarmus_new_return_item,distance=..1.2] Owner set from entity @s UUID
execute at @s run tag @e[type=item,tag=expelliarmus_new_return_item,distance=..1.2] remove expelliarmus_new_return_item
execute at @s run tag @e[type=item,tag=expelliarmus_return_item,distance=..1.2] remove expelliarmus_return_item
kill @n[type=item_display,tag=expelliarmus_disarmed_wand,tag=expelliarmus_wand_landed,distance=..3]
kill @n[type=interaction,tag=expelliarmus_wand_pickup,distance=..1]
data remove storage pack:expelliarmus_disarm pickup_item
execute at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.8 1.2
