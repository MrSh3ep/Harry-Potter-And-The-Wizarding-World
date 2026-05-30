data merge entity @s {Motion:[0.0d,0.0d,0.0d]}

execute store result score #x2 spell_trail_motion run data get entity @s Pos[0] 10000
execute store result score #y2 spell_trail_motion run data get entity @s Pos[1] 10000
execute store result score #z2 spell_trail_motion run data get entity @s Pos[2] 10000

scoreboard players operation #x2 spell_trail_motion += #vx spell_trail_motion
scoreboard players operation #y2 spell_trail_motion += #vy spell_trail_motion
scoreboard players operation #z2 spell_trail_motion += #vz spell_trail_motion

summon marker ~ ~ ~ {Tags:["spell_trail_bounce_target"]}

execute store result entity @e[type=marker,tag=spell_trail_bounce_target,limit=1,sort=nearest] Pos[0] double 0.0001 run scoreboard players get #x2 spell_trail_motion
execute store result entity @e[type=marker,tag=spell_trail_bounce_target,limit=1,sort=nearest] Pos[1] double 0.0001 run scoreboard players get #y2 spell_trail_motion
execute store result entity @e[type=marker,tag=spell_trail_bounce_target,limit=1,sort=nearest] Pos[2] double 0.0001 run scoreboard players get #z2 spell_trail_motion

tp @s ~ ~ ~ facing entity @e[type=marker,tag=spell_trail_bounce_target,limit=1,sort=nearest] feet
kill @e[type=marker,tag=spell_trail_bounce_target,limit=1,sort=nearest]
