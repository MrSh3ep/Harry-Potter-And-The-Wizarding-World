# Ran by the spell-wheel page-change detector only when the page changes.

data remove storage pdb:main in
data remove storage pdb:main out
function pdb:get_me_cached
data modify storage pdb:main in set from storage pdb:main out

scoreboard players operation @s SelectedSlot_icon = @s SelectedSlot
scoreboard players add @s SelectedSlot_icon 1
execute store result storage pdb:main in.SelectedPage_icon.page int 1 run scoreboard players get @s SelectedSlot_icon

function pdb:save_me
