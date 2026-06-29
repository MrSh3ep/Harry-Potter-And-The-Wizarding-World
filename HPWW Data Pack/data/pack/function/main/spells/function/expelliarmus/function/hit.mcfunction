scoreboard players set @s expelliarmus_wand_slot -1

execute if items entity @s hotbar.0 structure_block[custom_data~{wand:1b}] run scoreboard players set @s expelliarmus_wand_slot 0
execute if items entity @s hotbar.1 structure_block[custom_data~{wand:1b}] run scoreboard players set @s expelliarmus_wand_slot 1
execute if items entity @s hotbar.2 structure_block[custom_data~{wand:1b}] run scoreboard players set @s expelliarmus_wand_slot 2
execute if items entity @s hotbar.3 structure_block[custom_data~{wand:1b}] run scoreboard players set @s expelliarmus_wand_slot 3
execute if items entity @s hotbar.4 structure_block[custom_data~{wand:1b}] run scoreboard players set @s expelliarmus_wand_slot 4
execute if items entity @s hotbar.5 structure_block[custom_data~{wand:1b}] run scoreboard players set @s expelliarmus_wand_slot 5
execute if items entity @s hotbar.6 structure_block[custom_data~{wand:1b}] run scoreboard players set @s expelliarmus_wand_slot 6
execute if items entity @s hotbar.7 structure_block[custom_data~{wand:1b}] run scoreboard players set @s expelliarmus_wand_slot 7
execute if items entity @s hotbar.8 structure_block[custom_data~{wand:1b}] run scoreboard players set @s expelliarmus_wand_slot 8

data remove storage pdb:main out
function pdb:get_me_cached

execute if score @s expelliarmus_wand_slot matches -1 if data storage pdb:main out.hotbar.0{id:"minecraft:structure_block",components:{"minecraft:custom_data":{wand:1b}}} run scoreboard players set @s expelliarmus_wand_slot 0
execute if score @s expelliarmus_wand_slot matches -1 if data storage pdb:main out.hotbar.1{id:"minecraft:structure_block",components:{"minecraft:custom_data":{wand:1b}}} run scoreboard players set @s expelliarmus_wand_slot 1
execute if score @s expelliarmus_wand_slot matches -1 if data storage pdb:main out.hotbar.2{id:"minecraft:structure_block",components:{"minecraft:custom_data":{wand:1b}}} run scoreboard players set @s expelliarmus_wand_slot 2
execute if score @s expelliarmus_wand_slot matches -1 if data storage pdb:main out.hotbar.3{id:"minecraft:structure_block",components:{"minecraft:custom_data":{wand:1b}}} run scoreboard players set @s expelliarmus_wand_slot 3
execute if score @s expelliarmus_wand_slot matches -1 if data storage pdb:main out.hotbar.4{id:"minecraft:structure_block",components:{"minecraft:custom_data":{wand:1b}}} run scoreboard players set @s expelliarmus_wand_slot 4
execute if score @s expelliarmus_wand_slot matches -1 if data storage pdb:main out.hotbar.5{id:"minecraft:structure_block",components:{"minecraft:custom_data":{wand:1b}}} run scoreboard players set @s expelliarmus_wand_slot 5
execute if score @s expelliarmus_wand_slot matches -1 if data storage pdb:main out.hotbar.6{id:"minecraft:structure_block",components:{"minecraft:custom_data":{wand:1b}}} run scoreboard players set @s expelliarmus_wand_slot 6
execute if score @s expelliarmus_wand_slot matches -1 if data storage pdb:main out.hotbar.7{id:"minecraft:structure_block",components:{"minecraft:custom_data":{wand:1b}}} run scoreboard players set @s expelliarmus_wand_slot 7
execute if score @s expelliarmus_wand_slot matches -1 if data storage pdb:main out.hotbar.8{id:"minecraft:structure_block",components:{"minecraft:custom_data":{wand:1b}}} run scoreboard players set @s expelliarmus_wand_slot 8

function pack:main/spellwheel/wheel/function/close_wheel
effect give @s slowness 3 2 true

execute if score @s expelliarmus_wand_slot matches 0 run say slot0
execute if score @s expelliarmus_wand_slot matches 1 run say slot1
execute if score @s expelliarmus_wand_slot matches 2 run say slot2
execute if score @s expelliarmus_wand_slot matches 3 run say slot3
execute if score @s expelliarmus_wand_slot matches 4 run say slot4
execute if score @s expelliarmus_wand_slot matches 5 run say slot5
execute if score @s expelliarmus_wand_slot matches 6 run say slot6
execute if score @s expelliarmus_wand_slot matches 7 run say slot7
execute if score @s expelliarmus_wand_slot matches 8 run say slot8


