#Passed with the data assigned with the color of the spell
#Called from api:/private/set_life_time


#Loop Check
execute if score @s spell_trail_life_ticks matches 0 run return run function pack:main/spells/function/api/spell_trails/private/kill_trail
execute unless score @s spell_trail_life_ticks matches 0 run scoreboard players remove @s spell_trail_life_ticks 1

#Loop Start

#Movement
execute unless score @s spell_trail_speed matches -2147483648..2147483647 run scoreboard players operation @s spell_trail_speed = #default spell_trail_speed

function pack:main/spells/function/api/spell_trails/private/cache_motion_vector
scoreboard players operation #move_remaining spell_trail_motion = @s spell_trail_speed
execute if score #move_remaining spell_trail_motion matches 1.. at @s run function pack:main/spells/function/api/spell_trails/private/move_step

#Particles
execute at @s run function pack:main/spells/function/api/spell_trails/private/update_particle_anchor
execute at @s if entity @s[tag=trail_color_basic_cast] run function pack:main/spells/function/api/spell_trails/private/particles/basic_cast_gap
execute at @s if entity @s[tag=trail_color_red] run function pack:main/spells/function/api/spell_trails/private/particles/basic_cast_gap
execute at @s if entity @s[tag=trail_color_depulso] run function pack:main/spells/function/api/spell_trails/private/particles/depulso_gap
execute at @s if entity @s[tag=trail_color_yellow] run function pack:main/spells/function/api/spell_trails/private/particles/yellow_gap
execute at @s if entity @s[tag=trail_color_dark_red] run function pack:main/spells/function/api/spell_trails/private/particles/dark_red_gap
execute if entity @s[tag=trail_color_custom] run function pack:main/spells/function/api/spell_trails/private/storage/get_me
execute at @s if entity @s[tag=trail_color_custom] run function pack:main/spells/function/api/spell_trails/private/particles_gap_fill

execute at @s if entity @e[distance=0..1.1,type=!#pack:excluded_checked_entities,nbt=!{Small:1b},tag=!spell_trail_particle_anchor,limit=1,sort=nearest] run function pack:main/spells/function/api/spell_trails/private/kill_trail
execute at @s if entity @e[distance=0.1..1.1,type=armor_stand,tag=spell_trail,nbt=!{Small:1b},limit=1,sort=nearest] run function pack:main/spells/function/api/spell_trails/private/trail_collide

#Loop End
execute if score @s spell_trail_life_ticks matches 0 run return run function pack:main/spells/function/api/spell_trails/private/kill_trail
function pack:main/spells/function/api/spell_trails/private/queue_next_tick
