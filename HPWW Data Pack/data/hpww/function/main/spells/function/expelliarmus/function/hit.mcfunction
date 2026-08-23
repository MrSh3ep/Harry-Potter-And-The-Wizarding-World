scoreboard players set @s expelliarmus_wand_slot -1
data remove storage hpww:expelliarmus_disarm item

data remove storage pdb:main out
function pdb:get_me_cached

execute if data entity @s SelectedItem{components:{"minecraft:custom_data":{wand:1b}}} store result score @s expelliarmus_wand_slot run data get entity @s SelectedItemSlot

# When the wheel is open, the real hotbar is stored in PDB rather than held.
execute if score @s SpellWheelStatus matches 1 if score @s expelliarmus_wand_slot matches -1 if data storage pdb:main out.hotbar.0{components:{"minecraft:custom_data":{wand:1b}}} run scoreboard players set @s expelliarmus_wand_slot 0
execute if score @s SpellWheelStatus matches 1 if score @s expelliarmus_wand_slot matches -1 if data storage pdb:main out.hotbar.1{components:{"minecraft:custom_data":{wand:1b}}} run scoreboard players set @s expelliarmus_wand_slot 1
execute if score @s SpellWheelStatus matches 1 if score @s expelliarmus_wand_slot matches -1 if data storage pdb:main out.hotbar.2{components:{"minecraft:custom_data":{wand:1b}}} run scoreboard players set @s expelliarmus_wand_slot 2
execute if score @s SpellWheelStatus matches 1 if score @s expelliarmus_wand_slot matches -1 if data storage pdb:main out.hotbar.3{components:{"minecraft:custom_data":{wand:1b}}} run scoreboard players set @s expelliarmus_wand_slot 3
execute if score @s SpellWheelStatus matches 1 if score @s expelliarmus_wand_slot matches -1 if data storage pdb:main out.hotbar.4{components:{"minecraft:custom_data":{wand:1b}}} run scoreboard players set @s expelliarmus_wand_slot 4
execute if score @s SpellWheelStatus matches 1 if score @s expelliarmus_wand_slot matches -1 if data storage pdb:main out.hotbar.5{components:{"minecraft:custom_data":{wand:1b}}} run scoreboard players set @s expelliarmus_wand_slot 5
execute if score @s SpellWheelStatus matches 1 if score @s expelliarmus_wand_slot matches -1 if data storage pdb:main out.hotbar.6{components:{"minecraft:custom_data":{wand:1b}}} run scoreboard players set @s expelliarmus_wand_slot 6
execute if score @s SpellWheelStatus matches 1 if score @s expelliarmus_wand_slot matches -1 if data storage pdb:main out.hotbar.7{components:{"minecraft:custom_data":{wand:1b}}} run scoreboard players set @s expelliarmus_wand_slot 7
execute if score @s SpellWheelStatus matches 1 if score @s expelliarmus_wand_slot matches -1 if data storage pdb:main out.hotbar.8{components:{"minecraft:custom_data":{wand:1b}}} run scoreboard players set @s expelliarmus_wand_slot 8

execute if score @s expelliarmus_wand_slot matches 0 if data entity @s Inventory[{Slot:0b,components:{"minecraft:custom_data":{wand:1b}}}] run data modify storage hpww:expelliarmus_disarm item set from entity @s Inventory[{Slot:0b}]
execute if score @s expelliarmus_wand_slot matches 1 if data entity @s Inventory[{Slot:1b,components:{"minecraft:custom_data":{wand:1b}}}] run data modify storage hpww:expelliarmus_disarm item set from entity @s Inventory[{Slot:1b}]
execute if score @s expelliarmus_wand_slot matches 2 if data entity @s Inventory[{Slot:2b,components:{"minecraft:custom_data":{wand:1b}}}] run data modify storage hpww:expelliarmus_disarm item set from entity @s Inventory[{Slot:2b}]
execute if score @s expelliarmus_wand_slot matches 3 if data entity @s Inventory[{Slot:3b,components:{"minecraft:custom_data":{wand:1b}}}] run data modify storage hpww:expelliarmus_disarm item set from entity @s Inventory[{Slot:3b}]
execute if score @s expelliarmus_wand_slot matches 4 if data entity @s Inventory[{Slot:4b,components:{"minecraft:custom_data":{wand:1b}}}] run data modify storage hpww:expelliarmus_disarm item set from entity @s Inventory[{Slot:4b}]
execute if score @s expelliarmus_wand_slot matches 5 if data entity @s Inventory[{Slot:5b,components:{"minecraft:custom_data":{wand:1b}}}] run data modify storage hpww:expelliarmus_disarm item set from entity @s Inventory[{Slot:5b}]
execute if score @s expelliarmus_wand_slot matches 6 if data entity @s Inventory[{Slot:6b,components:{"minecraft:custom_data":{wand:1b}}}] run data modify storage hpww:expelliarmus_disarm item set from entity @s Inventory[{Slot:6b}]
execute if score @s expelliarmus_wand_slot matches 7 if data entity @s Inventory[{Slot:7b,components:{"minecraft:custom_data":{wand:1b}}}] run data modify storage hpww:expelliarmus_disarm item set from entity @s Inventory[{Slot:7b}]
execute if score @s expelliarmus_wand_slot matches 8 if data entity @s Inventory[{Slot:8b,components:{"minecraft:custom_data":{wand:1b}}}] run data modify storage hpww:expelliarmus_disarm item set from entity @s Inventory[{Slot:8b}]

execute unless data storage hpww:expelliarmus_disarm item if score @s SpellWheelStatus matches 1 if score @s expelliarmus_wand_slot matches 0 run data modify storage hpww:expelliarmus_disarm item set from storage pdb:main out.hotbar.0
execute unless data storage hpww:expelliarmus_disarm item if score @s SpellWheelStatus matches 1 if score @s expelliarmus_wand_slot matches 1 run data modify storage hpww:expelliarmus_disarm item set from storage pdb:main out.hotbar.1
execute unless data storage hpww:expelliarmus_disarm item if score @s SpellWheelStatus matches 1 if score @s expelliarmus_wand_slot matches 2 run data modify storage hpww:expelliarmus_disarm item set from storage pdb:main out.hotbar.2
execute unless data storage hpww:expelliarmus_disarm item if score @s SpellWheelStatus matches 1 if score @s expelliarmus_wand_slot matches 3 run data modify storage hpww:expelliarmus_disarm item set from storage pdb:main out.hotbar.3
execute unless data storage hpww:expelliarmus_disarm item if score @s SpellWheelStatus matches 1 if score @s expelliarmus_wand_slot matches 4 run data modify storage hpww:expelliarmus_disarm item set from storage pdb:main out.hotbar.4
execute unless data storage hpww:expelliarmus_disarm item if score @s SpellWheelStatus matches 1 if score @s expelliarmus_wand_slot matches 5 run data modify storage hpww:expelliarmus_disarm item set from storage pdb:main out.hotbar.5
execute unless data storage hpww:expelliarmus_disarm item if score @s SpellWheelStatus matches 1 if score @s expelliarmus_wand_slot matches 6 run data modify storage hpww:expelliarmus_disarm item set from storage pdb:main out.hotbar.6
execute unless data storage hpww:expelliarmus_disarm item if score @s SpellWheelStatus matches 1 if score @s expelliarmus_wand_slot matches 7 run data modify storage hpww:expelliarmus_disarm item set from storage pdb:main out.hotbar.7
execute unless data storage hpww:expelliarmus_disarm item if score @s SpellWheelStatus matches 1 if score @s expelliarmus_wand_slot matches 8 run data modify storage hpww:expelliarmus_disarm item set from storage pdb:main out.hotbar.8

execute unless data storage hpww:expelliarmus_disarm item run return fail
data remove storage hpww:expelliarmus_disarm item.Slot

function hpww:main/spells/function/expelliarmus/function/disarmed_wand/remove_saved_hotbar_slot
execute if score @s SpellWheelStatus matches 1 run function hpww:main/spellwheel/wheel/function/close_wheel

execute if score @s expelliarmus_wand_slot matches 0 run item replace entity @s hotbar.0 with air
execute if score @s expelliarmus_wand_slot matches 1 run item replace entity @s hotbar.1 with air
execute if score @s expelliarmus_wand_slot matches 2 run item replace entity @s hotbar.2 with air
execute if score @s expelliarmus_wand_slot matches 3 run item replace entity @s hotbar.3 with air
execute if score @s expelliarmus_wand_slot matches 4 run item replace entity @s hotbar.4 with air
execute if score @s expelliarmus_wand_slot matches 5 run item replace entity @s hotbar.5 with air
execute if score @s expelliarmus_wand_slot matches 6 run item replace entity @s hotbar.6 with air
execute if score @s expelliarmus_wand_slot matches 7 run item replace entity @s hotbar.7 with air
execute if score @s expelliarmus_wand_slot matches 8 run item replace entity @s hotbar.8 with air

function hpww:main/spells/function/expelliarmus/function/disarmed_wand/spawn
effect give @s slowness 3 3 true
