# Draw page 4 from cached per-player storage.
data remove storage pack:spell_wheel_runtime draw
data modify storage pack:spell_wheel_runtime draw set from storage pdb:main out.spell_wheel_cache.page_4.draw
execute store result storage pack:spell_wheel_runtime draw.selected_page_number int 1 run scoreboard players get @s SelectedSlot
execute store result storage pack:spell_wheel_runtime draw.protego_value int 1 run scoreboard players get @s protego_spell_wheel_value
function pack:main/spellwheel/wheel/function/display/draw with storage pack:spell_wheel_runtime draw
