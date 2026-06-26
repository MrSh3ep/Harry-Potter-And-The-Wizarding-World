# Ran once per player from pack:tick while SpellWheelStatus = 1.
# Shift toggles the item wheel once per key press; holding shift will not flicker it.

execute unless entity @s[nbt={SelectedItemSlot:7}] run scoreboard players set @s item_wheel_state 0
execute unless entity @s[nbt={SelectedItemSlot:7}] run scoreboard players set @s item_wheel_shift_down 0

execute if entity @s[nbt={SelectedItemSlot:7}] if predicate pack:detectshift if score @s item_wheel_shift_down matches 0 run scoreboard players add @s item_wheel_state 1
execute if score @s item_wheel_state matches 2.. run scoreboard players set @s item_wheel_state 0

execute if entity @s[nbt={SelectedItemSlot:7}] if predicate pack:detectshift run scoreboard players set @s item_wheel_shift_down 1
execute if entity @s[nbt={SelectedItemSlot:7}] unless predicate pack:detectshift run scoreboard players set @s item_wheel_shift_down 0

execute if entity @s[nbt={SelectedItemSlot:7}] if score @s item_wheel_state matches 1 run function pack:main/spellwheel/wheel/function/display/item_wheel/main/draw/display
execute if entity @s[nbt={SelectedItemSlot:7}] unless score @s item_wheel_state matches 1 run function pack:main/spellwheel/wheel/function/display/item_wheel/main/draw/action_bar


execute as @s if score @s item_wheel_state matches 1 run function pack:main/spellwheel/wheel/function/display/item_wheel/main/draw/display