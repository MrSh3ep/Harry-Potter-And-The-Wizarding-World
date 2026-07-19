# Save previous selected slot
scoreboard players operation @s LastSelectedSlot = @s SelectedSlot

#Fails If Not Wand
execute if data entity @s SelectedItem{components:{"minecraft:item_model":"hpww:settings_button"}} run return fail
execute if data entity @s SelectedItem{components:{"minecraft:item_model":"hpww:exit_wheel_button"}} run return fail

# Update current selected page from the selected wheel item's custom data.
execute store result score @s SelectedSlot run data get entity @s SelectedItem.components."minecraft:custom_data".page

# Compare and play sound if changed master @s ~ ~ ~ 1 1
#Sound
execute if score @s SelectedSlot > @s LastSelectedSlot run function hpww:main/spellwheel/wheel/function/sfx/change_page_line_13

execute if score @s SelectedSlot < @s LastSelectedSlot run function hpww:main/spellwheel/wheel/function/sfx/change_page_line_15

