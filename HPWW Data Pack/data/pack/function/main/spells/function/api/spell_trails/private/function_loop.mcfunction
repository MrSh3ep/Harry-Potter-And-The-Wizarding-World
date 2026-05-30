#Passed with the data assigned with the color of the spell
#Called from api:/private/set_life_time

say hi
#Loop Check
execute if score @s spell_trail_life_ticks matches 0 run return run function pack:main/spells/function/api/spell_trails/private/kill_trail
#Loop Start

#Particles
function pack:main/spells/function/api/spell_trails/private/storage/get_me
function pack:main/spells/function/api/spell_trails/private/particles with storage pack:trail_storage out.trail_color

#Movement



#Loop End
execute unless score @s spell_trail_life_ticks matches 0 run scoreboard players remove @s spell_trail_life_ticks 1
execute if score @s spell_trail_life_ticks matches 0 run return run function pack:main/spells/function/api/spell_trails/private/kill_trail
function pack:main/spells/function/api/spell_trails/private/queue_next_tick
