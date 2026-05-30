#Passed with the data assigned with the color of the spell
#Called from api:/private/set_life_time


#Loop Check
execute if score @s spell_trail_life_ticks matches 0 run return run function pack:main/spells/function/api/spell_trails/private/kill_trail
#Loop Start

#Particles
function pack:main/spells/function/api/spell_trails/private/storage/get_me
function pack:main/spells/function/api/spell_trails/private/particles with storage pack:trail_storage out.trail_color

#Movement
execute unless score @s spell_trail_speed matches -2147483648..2147483647 run scoreboard players operation @s spell_trail_speed = #default spell_trail_speed

summon marker ^ ^ ^1 {Tags:["spell_trail_motion_target"]}

execute store result score #x1 spell_trail_motion run data get entity @s Pos[0] 10000
execute store result score #y1 spell_trail_motion run data get entity @s Pos[1] 10000
execute store result score #z1 spell_trail_motion run data get entity @s Pos[2] 10000

execute store result score #x2 spell_trail_motion run data get entity @e[type=marker,tag=spell_trail_motion_target,limit=1,sort=nearest] Pos[0] 10000
execute store result score #y2 spell_trail_motion run data get entity @e[type=marker,tag=spell_trail_motion_target,limit=1,sort=nearest] Pos[1] 10000
execute store result score #z2 spell_trail_motion run data get entity @e[type=marker,tag=spell_trail_motion_target,limit=1,sort=nearest] Pos[2] 10000

scoreboard players operation #x2 spell_trail_motion -= #x1 spell_trail_motion
scoreboard players operation #y2 spell_trail_motion -= #y1 spell_trail_motion
scoreboard players operation #z2 spell_trail_motion -= #z1 spell_trail_motion

scoreboard players operation #x2 spell_trail_motion *= @s spell_trail_speed
scoreboard players operation #y2 spell_trail_motion *= @s spell_trail_speed
scoreboard players operation #z2 spell_trail_motion *= @s spell_trail_speed
scoreboard players operation #x2 spell_trail_motion /= #speed_scale spell_trail_motion
scoreboard players operation #y2 spell_trail_motion /= #speed_scale spell_trail_motion
scoreboard players operation #z2 spell_trail_motion /= #speed_scale spell_trail_motion

scoreboard players operation #x1 spell_trail_motion += #x2 spell_trail_motion
scoreboard players operation #y1 spell_trail_motion += #y2 spell_trail_motion
scoreboard players operation #z1 spell_trail_motion += #z2 spell_trail_motion

execute store result entity @s Pos[0] double 0.0001 run scoreboard players get #x1 spell_trail_motion
execute store result entity @s Pos[1] double 0.0001 run scoreboard players get #y1 spell_trail_motion
execute store result entity @s Pos[2] double 0.0001 run scoreboard players get #z1 spell_trail_motion
data merge entity @s {Motion:[0.0d,0.0d,0.0d]}

kill @e[type=marker,tag=spell_trail_motion_target,limit=1,sort=nearest]


#Loop End
execute unless score @s spell_trail_life_ticks matches 0 run scoreboard players remove @s spell_trail_life_ticks 1
execute if score @s spell_trail_life_ticks matches 0 run return run function pack:main/spells/function/api/spell_trails/private/kill_trail
function pack:main/spells/function/api/spell_trails/private/queue_next_tick
