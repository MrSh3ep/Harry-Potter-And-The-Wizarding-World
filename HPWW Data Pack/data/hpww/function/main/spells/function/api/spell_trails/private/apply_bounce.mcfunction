data merge entity @s {Motion:[0.0d,0.0d,0.0d]}

summon marker ~ ~ ~ {Tags:["spell_trail_bounce_origin"]}

execute store result score #x2 spell_trail_motion run data get entity @e[type=marker,tag=spell_trail_bounce_origin,limit=1,sort=nearest] Pos[0] 10000
execute store result score #y2 spell_trail_motion run data get entity @e[type=marker,tag=spell_trail_bounce_origin,limit=1,sort=nearest] Pos[1] 10000
execute store result score #z2 spell_trail_motion run data get entity @e[type=marker,tag=spell_trail_bounce_origin,limit=1,sort=nearest] Pos[2] 10000

scoreboard players set #bounce_skin spell_trail_motion 800

scoreboard players operation #tmp spell_trail_motion = #nx spell_trail_motion
scoreboard players operation #tmp spell_trail_motion *= #bounce_skin spell_trail_motion
scoreboard players operation #x2 spell_trail_motion += #tmp spell_trail_motion

scoreboard players operation #tmp spell_trail_motion = #ny spell_trail_motion
scoreboard players operation #tmp spell_trail_motion *= #bounce_skin spell_trail_motion
scoreboard players operation #y2 spell_trail_motion += #tmp spell_trail_motion

scoreboard players operation #tmp spell_trail_motion = #nz spell_trail_motion
scoreboard players operation #tmp spell_trail_motion *= #bounce_skin spell_trail_motion
scoreboard players operation #z2 spell_trail_motion += #tmp spell_trail_motion

summon marker ~ ~ ~ {Tags:["spell_trail_bounce_position"]}

execute store result entity @e[type=marker,tag=spell_trail_bounce_position,limit=1,sort=nearest] Pos[0] double 0.0001 run scoreboard players get #x2 spell_trail_motion
execute store result entity @e[type=marker,tag=spell_trail_bounce_position,limit=1,sort=nearest] Pos[1] double 0.0001 run scoreboard players get #y2 spell_trail_motion
execute store result entity @e[type=marker,tag=spell_trail_bounce_position,limit=1,sort=nearest] Pos[2] double 0.0001 run scoreboard players get #z2 spell_trail_motion

scoreboard players operation #x2 spell_trail_motion += #vx spell_trail_motion
scoreboard players operation #y2 spell_trail_motion += #vy spell_trail_motion
scoreboard players operation #z2 spell_trail_motion += #vz spell_trail_motion

summon marker ~ ~ ~ {Tags:["spell_trail_bounce_target"]}

execute store result entity @e[type=marker,tag=spell_trail_bounce_target,limit=1,sort=nearest] Pos[0] double 0.0001 run scoreboard players get #x2 spell_trail_motion
execute store result entity @e[type=marker,tag=spell_trail_bounce_target,limit=1,sort=nearest] Pos[1] double 0.0001 run scoreboard players get #y2 spell_trail_motion
execute store result entity @e[type=marker,tag=spell_trail_bounce_target,limit=1,sort=nearest] Pos[2] double 0.0001 run scoreboard players get #z2 spell_trail_motion

execute at @e[type=marker,tag=spell_trail_bounce_position,limit=1,sort=nearest] run tp @s ~ ~ ~ facing entity @e[type=marker,tag=spell_trail_bounce_target,limit=1,sort=nearest] feet
kill @e[type=marker,tag=spell_trail_bounce_origin,limit=1,sort=nearest]
kill @e[type=marker,tag=spell_trail_bounce_position,limit=1,sort=nearest]
kill @e[type=marker,tag=spell_trail_bounce_target,limit=1,sort=nearest]
