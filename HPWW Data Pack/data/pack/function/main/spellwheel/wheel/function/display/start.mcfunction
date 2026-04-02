
#called from pack:tick.mcfunction

data remove storage pdb:main out
function pdb:get_me

#page 1
execute if score @s SelectedSlot matches 0 run return run function pack:main/spellwheel/wheel/function/display/pages/page_1

#page 2
execute if score @s SelectedSlot matches 1 run return run function pack:main/spellwheel/wheel/function/display/pages/page_2

#page 3
execute if score @s SelectedSlot matches 2 run return run function pack:main/spellwheel/wheel/function/display/pages/page_3

#page 4
execute if score @s SelectedSlot matches 3 run return run function pack:main/spellwheel/wheel/function/display/pages/page_4

#page 5
execute if score @s SelectedSlot matches 4 run return run function pack:main/spellwheel/wheel/function/display/pages/page_5

#page 6
execute if score @s SelectedSlot matches 5 run return run function pack:main/spellwheel/wheel/function/display/pages/page_6

#page 7
execute if score @s SelectedSlot matches 6 run return run function pack:main/spellwheel/wheel/function/display/pages/page_7
