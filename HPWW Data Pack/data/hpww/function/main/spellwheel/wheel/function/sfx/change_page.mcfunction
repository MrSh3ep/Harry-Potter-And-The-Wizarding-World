# Save previous selected slot
scoreboard players operation @s LastSelectedSlot = @s SelectedSlot

# Ignore the settings/exit buttons and any unexpected non-page item.
execute unless items entity @s weapon.mainhand test_instance_block[custom_data~{"type":"spell_wheel_page"}] run return fail

# Read the page through item predicates so Minecraft does not serialize the
# player's complete NBT every tick.
execute if items entity @s weapon.mainhand test_instance_block[custom_data~{"type":"spell_wheel_page","page":0b}] run scoreboard players set @s SelectedSlot 0
execute if items entity @s weapon.mainhand test_instance_block[custom_data~{"type":"spell_wheel_page","page":1b}] run scoreboard players set @s SelectedSlot 1
execute if items entity @s weapon.mainhand test_instance_block[custom_data~{"type":"spell_wheel_page","page":2b}] run scoreboard players set @s SelectedSlot 2
execute if items entity @s weapon.mainhand test_instance_block[custom_data~{"type":"spell_wheel_page","page":3b}] run scoreboard players set @s SelectedSlot 3
execute if items entity @s weapon.mainhand test_instance_block[custom_data~{"type":"spell_wheel_page","page":4b}] run scoreboard players set @s SelectedSlot 4
execute if items entity @s weapon.mainhand test_instance_block[custom_data~{"type":"spell_wheel_page","page":5b}] run scoreboard players set @s SelectedSlot 5
execute if items entity @s weapon.mainhand test_instance_block[custom_data~{"type":"spell_wheel_page","page":6b}] run scoreboard players set @s SelectedSlot 6

# Compare and play sound if changed master @s ~ ~ ~ 1 1
#Sound
execute if score @s SelectedSlot > @s LastSelectedSlot run function hpww:main/spellwheel/wheel/function/sfx/change_page_line_13

execute if score @s SelectedSlot < @s LastSelectedSlot run function hpww:main/spellwheel/wheel/function/sfx/change_page_line_15

# Persist only when the player actually changes page.
execute unless score @s SelectedSlot = @s LastSelectedSlot run function hpww:main/spells/function/other/selected_page_save
