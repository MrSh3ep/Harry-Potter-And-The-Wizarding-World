particle enchant ~ ~ ~ 0.5 0 0.5 1 30 force @a

playsound block.enchantment_table.use master @a[distance=..5]
playsound block.amethyst_block.hit master @a[distance=..5]


execute if entity @e[distance=0..1, type=item, nbt={"Item":{components:{"minecraft:custom_data":{wand_core:"unicorn_hair"}}}}] run return run particle dust{color:[0.87,0.55,0.93],scale:1} ~ ~ ~ .453 .453 .453 0 100 force @a

execute if entity @e[distance=0..1, type=item, nbt={"Item":{components:{"minecraft:custom_data":{wand_core:"dragon_heartstring"}}}}] run return run particle dust{color:[0.46,0.12,0.27],scale:1} ~ ~ ~ .453 .453 .453 0 100 force @a


execute if entity @e[distance=0..1, type=item, nbt={"Item":{components:{"minecraft:custom_data":{wand_core:"phoenix_feather"}}}}] run return run particle dust{color:[1.0,0.47,0.04],scale:1} ~ ~ ~ .453 .453 .453 0 100 force @a
