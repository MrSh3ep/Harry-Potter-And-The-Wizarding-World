
data remove storage pdb:main in
data remove storage pdb:main out
function pdb:get_me
data modify storage pdb:main in set from storage pdb:main out

data modify storage pdb:main in.preset.0 set from entity @s Inventory[{Slot:0b}]
data modify storage pdb:main in.preset.1 set from entity @s Inventory[{Slot:1b}]
data modify storage pdb:main in.preset.2 set from entity @s Inventory[{Slot:2b}]
data modify storage pdb:main in.preset.3 set from entity @s Inventory[{Slot:3b}]
data modify storage pdb:main in.preset.4 set from entity @s Inventory[{Slot:4b}]
data modify storage pdb:main in.preset.5 set from entity @s Inventory[{Slot:5b}]
data modify storage pdb:main in.preset.6 set from entity @s Inventory[{Slot:6b}]
data modify storage pdb:main in.preset.7 set from entity @s Inventory[{Slot:7b}]
data modify storage pdb:main in.preset.8 set from entity @s Inventory[{Slot:8b}]
function pdb:save_me