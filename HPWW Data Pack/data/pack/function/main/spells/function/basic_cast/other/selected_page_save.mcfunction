#Ran from main tick.mcfunction

data remove storage pdb:main in
data remove storage pdb:main out
function pdb:get_me
data modify storage pdb:main in set from storage pdb:main out

scoreboard players operation @s SelectedSlot_icon = @s SelectedSlot
scoreboard players operation @s SelectedSlot_icon += @s number_1

execute if score @s SelectedSlot_icon matches 1 run data modify storage pdb:main in.SelectedPage_icon.page set value 1

execute if score @s SelectedSlot_icon matches 2 run data modify storage pdb:main in.SelectedPage_icon.page set value 2

execute if score @s SelectedSlot_icon matches 3 run data modify storage pdb:main in.SelectedPage_icon.page set value 3

execute if score @s SelectedSlot_icon matches 4 run data modify storage pdb:main in.SelectedPage_icon.page set value 4

execute if score @s SelectedSlot_icon matches 5 run data modify storage pdb:main in.SelectedPage_icon.page set value 5

execute if score @s SelectedSlot_icon matches 6 run data modify storage pdb:main in.SelectedPage_icon.page set value 6

execute if score @s SelectedSlot_icon matches 7 run data modify storage pdb:main in.SelectedPage_icon.page set value 7

function pdb:save_me
