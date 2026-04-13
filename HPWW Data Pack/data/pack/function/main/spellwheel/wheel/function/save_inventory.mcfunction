
# To modify existing stuff use get me first to get the info...



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

# Executes only if the player has no preset
function pdb:get_me_cached
execute if score @s HasPreset matches 0 run return run function pack:main/spellwheel/wheel/function/first_open with storage pdb:main out.selected_item.components."minecraft:custom_data"

function pack:main/spellwheel/wheel/function/cache/refresh_if_dirty

function pdb:get_me_cached
function pack:main/spellwheel/wheel/function/give_wands_main
