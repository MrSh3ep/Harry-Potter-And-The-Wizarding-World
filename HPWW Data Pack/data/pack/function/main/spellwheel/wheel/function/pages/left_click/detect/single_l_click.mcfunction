# Ran from lc tick
scoreboard players set @s left_click_timer 0
scoreboard players set @s left_click_count 0
execute as @s if predicate pack:detectshift run return run function pack:main/spells/function/basic_cast/basic_cast_start
#single click




#lumos detect


$execute as @s run function pack:main/spells/function/$(slot_1)/$(slot_1)_function
