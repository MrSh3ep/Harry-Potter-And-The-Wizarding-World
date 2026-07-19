summon marker ^ ^ ^1 {Tags:["spell_trail_bounce_vector"]}

execute store result score #x1 spell_trail_motion run data get entity @s Pos[0] 10000
execute store result score #y1 spell_trail_motion run data get entity @s Pos[1] 10000
execute store result score #z1 spell_trail_motion run data get entity @s Pos[2] 10000

execute store result score #vx spell_trail_motion run data get entity @e[type=marker,tag=spell_trail_bounce_vector,limit=1,sort=nearest] Pos[0] 10000
execute store result score #vy spell_trail_motion run data get entity @e[type=marker,tag=spell_trail_bounce_vector,limit=1,sort=nearest] Pos[1] 10000
execute store result score #vz spell_trail_motion run data get entity @e[type=marker,tag=spell_trail_bounce_vector,limit=1,sort=nearest] Pos[2] 10000

scoreboard players operation #vx spell_trail_motion -= #x1 spell_trail_motion
scoreboard players operation #vy spell_trail_motion -= #y1 spell_trail_motion
scoreboard players operation #vz spell_trail_motion -= #z1 spell_trail_motion

kill @e[type=marker,tag=spell_trail_bounce_vector,limit=1,sort=nearest]
