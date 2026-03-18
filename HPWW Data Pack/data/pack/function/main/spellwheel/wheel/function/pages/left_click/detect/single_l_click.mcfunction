# Ran from lc tick

#single click
scoreboard players set @s left_click_timer 0
scoreboard players set @s left_click_count 0



#lumos detect


$execute as @s run function pack:main/spells/function/$(slot_1)/$(slot_1)_function
