execute if score @s levioso_spell_active.timer matches 1.. run advancement revoke @s only pack:blocks/main_wand/right_click_main_wand
execute if score @s levioso_spell_active.timer matches 1.. run return run tellraw @s ["",{color:"red",text:"You can not enter the spell wheel while charmed with Levioso"}]

# To modify existing stuff use get me first to get the info...
execute unless score @s spell_wheel_tutorial_disabled matches 1 run function pack:main/spellwheel/wheel/function/save_inventory_line_3

execute unless score @s spell_wheel_tutorial_disabled matches 1 run tellraw @s ["",{click_event:{action:"run_command",command:"/trigger spell_wheel_tutorial_chat set 1"},text:"Click",extra:[{color:"green",text:" HERE "},{color:"white",text:"to learn how to use the Spell Wheel!"}]},"\n",{color:"gray",text:"(click here to disable this message..)",click_event:{action:"run_command",command:"/trigger spell_wheel_tutorial_disable set 1"},hover_event:{action:"show_text",value:["",{text:"Hide this tutorial message for you"}]}}]
scoreboard players set @s SelectedSlot -1
scoreboard players set @s SpellWheelStatus 1
scoreboard players set @s spell_wheel_display_dirty 1
scoreboard players set @s spell_wheel_display_timer 0
scoreboard players set @s spell_wheel_maintenance_timer 0
playsound block.vault.activate master @s ~ ~ ~ 1 1

execute as @a if score @s new_player_storage matches 0 run function pdb:new_player

data remove storage pdb:main in
data remove storage pdb:main out
function pdb:get_me_cached
data modify storage pdb:main in set from storage pdb:main out
data remove storage pdb:main in.hotbar
#Resaves Hotbar But not Preset :}
data modify storage pdb:main in.hotbar.0 set from entity @s Inventory[{Slot:0b}]
data modify storage pdb:main in.hotbar.1 set from entity @s Inventory[{Slot:1b}]
data modify storage pdb:main in.hotbar.2 set from entity @s Inventory[{Slot:2b}]
data modify storage pdb:main in.hotbar.3 set from entity @s Inventory[{Slot:3b}]
data modify storage pdb:main in.hotbar.4 set from entity @s Inventory[{Slot:4b}]
data modify storage pdb:main in.hotbar.5 set from entity @s Inventory[{Slot:5b}]
data modify storage pdb:main in.hotbar.6 set from entity @s Inventory[{Slot:6b}]
data modify storage pdb:main in.hotbar.7 set from entity @s Inventory[{Slot:7b}]
data modify storage pdb:main in.hotbar.8 set from entity @s Inventory[{Slot:8b}]
# Gets The Wand Data
data modify storage pdb:main in.selected_item set from entity @s SelectedItem
function pdb:save_me

# Executes only if the player has no preset to generate a copy of main wand for the spell whell wands :D
data remove storage pdb:main in
data remove storage pdb:main out
function pdb:get_me_cached
data modify storage pdb:main in set from storage pdb:main out

data remove storage pdb:main in.wands.first_open.data

# saving stuff
data modify storage pdb:main in.wands.first_open.data.lore set from storage pdb:main out.selected_item.components."minecraft:lore"
data modify storage pdb:main in.wands.first_open.data.wand_wood set from storage pdb:main out.selected_item.components."minecraft:custom_data".wand_wood
data modify storage pdb:main in.wands.first_open.data.wand_core set from storage pdb:main out.selected_item.components."minecraft:custom_data".wand_core
function pdb:save_me

#saved lore, wood, and core

function pdb:get_me_cached
execute if score @s HasPreset matches 0 run return run function pack:main/spellwheel/wheel/function/first_open with storage pdb:main out.wands.first_open.data

function pack:main/spellwheel/wheel/function/cache/refresh_if_dirty

function pdb:get_me_cached
function pack:main/spellwheel/wheel/function/give_wands_main
