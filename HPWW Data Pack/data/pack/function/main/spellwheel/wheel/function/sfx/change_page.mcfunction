# Save previous selected slot
scoreboard players operation @s LastSelectedSlot = @s SelectedSlot

# Update current selected slot from player NBT
execute store result score @s SelectedSlot run data get entity @s SelectedItemSlot

# Compare and play sound if changed master @s ~ ~ ~ 1 1

#Fails If Not Wand
execute if data entity @s SelectedItem{components:{"minecraft:item_model":"pack:settings_button"}} run return fail
execute if data entity @s SelectedItem{components:{"minecraft:item_model":"pack:exit_wheel_button"}} run return fail
#Sound
execute if score @s SelectedSlot > @s LastSelectedSlot run scoreboard players set @s spell_wheel_display_dirty 1
execute if score @s SelectedSlot > @s LastSelectedSlot run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 1

execute if score @s SelectedSlot < @s LastSelectedSlot run scoreboard players set @s spell_wheel_display_dirty 1
execute if score @s SelectedSlot < @s LastSelectedSlot run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 1

