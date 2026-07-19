# Draw page 1 from cached per-player storage.



data remove storage hpww:spell_wheel_runtime draw
data modify storage hpww:spell_wheel_runtime draw set from storage pdb:main out.spell_wheel_cache.page_1.draw
execute store result storage hpww:spell_wheel_runtime draw.selected_page_number int 1 run scoreboard players get @s SelectedSlot
execute store result storage hpww:spell_wheel_runtime draw.protego_value int 1 run scoreboard players get @s protego_spell_wheel_value
function hpww:main/spellwheel/wheel/function/display/draw with storage hpww:spell_wheel_runtime draw