#ran from left click single detect 
scoreboard players set @s left_click_timer 0
scoreboard players set @s left_click_count 0

execute if score @s basic_cast_cooldown matches 1.. run return fail

execute unless score @s basic_cast_cooldown matches 0 run return run function pack:main/spells/function/basic_cast/basic_cast_function

scoreboard players set @s basic_cast_cooldown 10

function pack:main/spells/function/api/spell_trails/api/spell_trail_start {end_function_namespace:"pack",end_function:"main/spells/function/basic_cast/basic_cast_damage", color_1:[1.0,0.22,0.22], color_2:[1.0,0.45,0.22], speed:2200, life_ticks:20, color:"basic_cast"}

playsound minecraft:entity.breeze.jump master @a ~ ~ ~ 3

#tp done in tick function
