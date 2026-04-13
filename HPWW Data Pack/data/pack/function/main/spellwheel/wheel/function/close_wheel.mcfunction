function pack:main/spellwheel/wheel/function/save_preset
scoreboard players set @s SpellWheelStatus 0
scoreboard players set @s spell_wheel_display_dirty 0
scoreboard players set @s spell_wheel_display_timer 0
scoreboard players set @s spell_wheel_maintenance_timer 0
playsound block.vault.deactivate master @s ~ ~ ~ 1 1

#Clear The Hotbar
item replace entity @s hotbar.0 with air
item replace entity @s hotbar.1 with air
item replace entity @s hotbar.2 with air
item replace entity @s hotbar.3 with air
item replace entity @s hotbar.4 with air
item replace entity @s hotbar.5 with air
item replace entity @s hotbar.6 with air
item replace entity @s hotbar.7 with air
item replace entity @s hotbar.8 with air


data remove storage pdb:main out
function pdb:get_me_cached
#give hotbar
execute if data storage pdb:main out.hotbar.0 run summon item ~ ~ ~ {PickupDelay:0, Tags:["temp"],Item:{id:"minecraft:oak_planks",count:1, components:{item_model:"pack:temp_item"}}}
data modify entity @n[type=item,tag=temp, nbt={Item:{"components":{"minecraft:item_model":"pack:temp_item"}}}] Item set from storage pdb:main in.hotbar.0
tag @e remove temp

execute if data storage pdb:main out.hotbar.1 run summon item ~ ~ ~ {PickupDelay:0, Tags:["temp"],Item:{id:"minecraft:dark_oak_planks",count:1, components:{item_model:"pack:temp_item"}}}
data modify entity @n[type=item,tag=temp, nbt={Item:{"components":{"minecraft:item_model":"pack:temp_item"}}}] Item set from storage pdb:main in.hotbar.1
tag @e remove temp

execute if data storage pdb:main out.hotbar.2 run summon item ~ ~ ~ {PickupDelay:0, Tags:["temp"],Item:{id:"minecraft:spruce_planks",count:1, components:{item_model:"pack:temp_item"}}}
data modify entity @n[type=item,tag=temp, nbt={Item:{"components":{"minecraft:item_model":"pack:temp_item"}}}] Item set from storage pdb:main in.hotbar.2
tag @e remove temp

execute if data storage pdb:main out.hotbar.3 run summon item ~ ~ ~ {PickupDelay:0, Tags:["temp"],Item:{id:"minecraft:birch_planks",count:1, components:{item_model:"pack:temp_item"}}}
data modify entity @n[type=item,tag=temp, nbt={Item:{"components":{"minecraft:item_model":"pack:temp_item"}}}] Item set from storage pdb:main in.hotbar.3
tag @e remove temp

execute if data storage pdb:main out.hotbar.4 run summon item ~ ~ ~ {PickupDelay:0, Tags:["temp"],Item:{id:"minecraft:acacia_planks",count:1, components:{item_model:"pack:temp_item"}}}
data modify entity @n[type=item,tag=temp, nbt={Item:{"components":{"minecraft:item_model":"pack:temp_item"}}}] Item set from storage pdb:main in.hotbar.4
tag @e remove temp

execute if data storage pdb:main out.hotbar.5 run summon item ~ ~ ~ {PickupDelay:0, Tags:["temp"],Item:{id:"minecraft:jungle_planks",count:1, components:{item_model:"pack:temp_item"}}}
data modify entity @n[type=item,tag=temp, nbt={Item:{"components":{"minecraft:item_model":"pack:temp_item"}}}] Item set from storage pdb:main in.hotbar.5
tag @e remove temp

execute if data storage pdb:main out.hotbar.6 run summon item ~ ~ ~ {PickupDelay:0, Tags:["temp"],Item:{id:"minecraft:mangrove_planks",count:1, components:{item_model:"pack:temp_item"}}}
data modify entity @n[type=item,tag=temp, nbt={Item:{"components":{"minecraft:item_model":"pack:temp_item"}}}] Item set from storage pdb:main in.hotbar.6
tag @e remove temp

execute if data storage pdb:main out.hotbar.7 run summon item ~ ~ ~ {PickupDelay:0, Tags:["temp"],Item:{id:"minecraft:pale_oak_planks",count:1, components:{item_model:"pack:temp_item"}}}
data modify entity @n[type=item,tag=temp, nbt={Item:{"components":{"minecraft:item_model":"pack:temp_item"}}}] Item set from storage pdb:main in.hotbar.7
tag @e remove temp

execute if data storage pdb:main out.hotbar.8 run summon item ~ ~ ~ {PickupDelay:0, Tags:["temp"],Item:{id:"minecraft:cherry_planks",count:1, components:{item_model:"pack:temp_item"}}}
data modify entity @n[type=item,tag=temp, nbt={Item:{"components":{"minecraft:item_model":"pack:temp_item"}}}] Item set from storage pdb:main in.hotbar.8
tag @e remove temp



advancement revoke @s only pack:blocks/main_wand/right_click_main_wand
advancement revoke @s only pack:blocks/main_wand/right_click_exit_wheel_button
advancement revoke @s only pack:blocks/main_wand/right_click_settings_button

title @s actionbar ""
