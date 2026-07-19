data remove storage pdb:main in
data remove storage pdb:main out
function pdb:get_me_cached
data modify storage pdb:main in set from storage pdb:main out

execute if score @s expelliarmus_wand_slot matches 0 run data remove storage pdb:main in.hotbar.0
execute if score @s expelliarmus_wand_slot matches 1 run data remove storage pdb:main in.hotbar.1
execute if score @s expelliarmus_wand_slot matches 2 run data remove storage pdb:main in.hotbar.2
execute if score @s expelliarmus_wand_slot matches 3 run data remove storage pdb:main in.hotbar.3
execute if score @s expelliarmus_wand_slot matches 4 run data remove storage pdb:main in.hotbar.4
execute if score @s expelliarmus_wand_slot matches 5 run data remove storage pdb:main in.hotbar.5
execute if score @s expelliarmus_wand_slot matches 6 run data remove storage pdb:main in.hotbar.6
execute if score @s expelliarmus_wand_slot matches 7 run data remove storage pdb:main in.hotbar.7
execute if score @s expelliarmus_wand_slot matches 8 run data remove storage pdb:main in.hotbar.8

function pdb:save_me
