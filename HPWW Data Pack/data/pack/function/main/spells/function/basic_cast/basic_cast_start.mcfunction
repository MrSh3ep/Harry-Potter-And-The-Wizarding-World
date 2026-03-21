#ran from left click single detect 
execute if score @s basic_cast_cooldown matches 1.. run return fail

execute if score @s basic_cast_cooldown matches 0 run function pack:main/spells/function/basic_cast/basic_cast_function
execute if score @s basic_cast_cooldown matches 0 run scoreboard players set @s basic_cast_cooldown 8
