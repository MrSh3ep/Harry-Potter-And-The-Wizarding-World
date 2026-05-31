#Passed with the data assigned with the color of the spell
#Called from api:/private/set_life_time


#Loop Check
execute if score @s spell_trail_life_ticks matches 0 run return run function pack:main/spells/function/api/spell_trails/private/kill_trail
execute unless score @s spell_trail_life_ticks matches 0 run scoreboard players remove @s spell_trail_life_ticks 1

#Loop Start

#Particles
function pack:main/spells/function/api/spell_trails/private/storage/get_me
function pack:main/spells/function/api/spell_trails/private/particles with storage pack:trail_storage out.trail_color.particle_colors

#Movement
execute unless score @s spell_trail_speed matches -2147483648..2147483647 run scoreboard players operation @s spell_trail_speed = #default spell_trail_speed

function pack:main/spells/function/api/spell_trails/private/cache_motion_vector
scoreboard players set #10 spell_trail_motion 10
scoreboard players set #2 spell_trail_motion 2
scoreboard players operation #max_step spell_trail_motion = #speed_scale spell_trail_motion
scoreboard players operation #max_step spell_trail_motion /= #10 spell_trail_motion
scoreboard players operation #half_step spell_trail_motion = #max_step spell_trail_motion
scoreboard players operation #half_step spell_trail_motion /= #2 spell_trail_motion
scoreboard players operation #move_remaining spell_trail_motion = @s spell_trail_speed
execute if score #move_remaining spell_trail_motion matches 1.. at @s run function pack:main/spells/function/api/spell_trails/private/move_step

execute at @s if entity @e[distance=0..0.5, type=!armor_stand] run function pack:main/spells/function/api/spell_trails/private/kill_trail
execute at @s if entity @e[distance=0.1..0.5, type=armor_stand] run function pack:main/spells/function/api/spell_trails/private/trail_collide

#Loop End
execute if score @s spell_trail_life_ticks matches 0 run return run function pack:main/spells/function/api/spell_trails/private/kill_trail
function pack:main/spells/function/api/spell_trails/private/queue_next_tick
