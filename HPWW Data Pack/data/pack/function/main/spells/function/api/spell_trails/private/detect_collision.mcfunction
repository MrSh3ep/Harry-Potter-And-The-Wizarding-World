scoreboard players set #hit_x spell_trail_motion 0
scoreboard players set #hit_y spell_trail_motion 0
scoreboard players set #hit_z spell_trail_motion 0
scoreboard players set #normal_found spell_trail_motion 0
scoreboard players set #nx spell_trail_motion 0
scoreboard players set #ny spell_trail_motion 0
scoreboard players set #nz spell_trail_motion 0
scoreboard players set #-1 spell_trail_motion -1

execute unless score @s spell_trail_speed matches -2147483648..2147483647 run scoreboard players operation @s spell_trail_speed = #default spell_trail_speed

summon marker ~ ~ ~ {Tags:["spell_trail_collision_origin"]}
summon marker ^ ^ ^1 {Tags:["spell_trail_bounce_vector"]}

execute store result score #x1 spell_trail_motion run data get entity @e[type=marker,tag=spell_trail_collision_origin,limit=1,sort=nearest] Pos[0] 10000
execute store result score #y1 spell_trail_motion run data get entity @e[type=marker,tag=spell_trail_collision_origin,limit=1,sort=nearest] Pos[1] 10000
execute store result score #z1 spell_trail_motion run data get entity @e[type=marker,tag=spell_trail_collision_origin,limit=1,sort=nearest] Pos[2] 10000

execute store result score #vx spell_trail_motion run data get entity @e[type=marker,tag=spell_trail_bounce_vector,limit=1,sort=nearest] Pos[0] 10000
execute store result score #vy spell_trail_motion run data get entity @e[type=marker,tag=spell_trail_bounce_vector,limit=1,sort=nearest] Pos[1] 10000
execute store result score #vz spell_trail_motion run data get entity @e[type=marker,tag=spell_trail_bounce_vector,limit=1,sort=nearest] Pos[2] 10000

scoreboard players operation #vx spell_trail_motion -= #x1 spell_trail_motion
scoreboard players operation #vy spell_trail_motion -= #y1 spell_trail_motion
scoreboard players operation #vz spell_trail_motion -= #z1 spell_trail_motion

kill @e[type=marker,tag=spell_trail_collision_origin,limit=1,sort=nearest]
kill @e[type=marker,tag=spell_trail_bounce_vector,limit=1,sort=nearest]

execute if score #vx spell_trail_motion matches 1.. positioned ~0.08 ~1 ~ unless block ~ ~ ~ #pack:spell_trail_passable run scoreboard players set #hit_x spell_trail_motion 1
execute if score #vx spell_trail_motion matches ..-1 positioned ~-0.08 ~1 ~ unless block ~ ~ ~ #pack:spell_trail_passable run scoreboard players set #hit_x spell_trail_motion 1
execute if score #vy spell_trail_motion matches 1.. positioned ~ ~1.08 ~ unless block ~ ~ ~ #pack:spell_trail_passable run scoreboard players set #hit_y spell_trail_motion 1
execute if score #vy spell_trail_motion matches ..-1 positioned ~ ~0.92 ~ unless block ~ ~ ~ #pack:spell_trail_passable run scoreboard players set #hit_y spell_trail_motion 1
execute if score #vz spell_trail_motion matches 1.. positioned ~ ~1 ~0.08 unless block ~ ~ ~ #pack:spell_trail_passable run scoreboard players set #hit_z spell_trail_motion 1
execute if score #vz spell_trail_motion matches ..-1 positioned ~ ~1 ~-0.08 unless block ~ ~ ~ #pack:spell_trail_passable run scoreboard players set #hit_z spell_trail_motion 1

scoreboard players operation #abs_vx spell_trail_motion = #vx spell_trail_motion
scoreboard players operation #abs_vy spell_trail_motion = #vy spell_trail_motion
scoreboard players operation #abs_vz spell_trail_motion = #vz spell_trail_motion
execute if score #abs_vx spell_trail_motion matches ..-1 run scoreboard players operation #abs_vx spell_trail_motion *= #-1 spell_trail_motion
execute if score #abs_vy spell_trail_motion matches ..-1 run scoreboard players operation #abs_vy spell_trail_motion *= #-1 spell_trail_motion
execute if score #abs_vz spell_trail_motion matches ..-1 run scoreboard players operation #abs_vz spell_trail_motion *= #-1 spell_trail_motion

# Pick one surface normal before reflecting. When multiple probes touch blocks,
# the dominant velocity component is treated as the impact face so the trail
# bounces off the surface it was heading into instead of reversing every axis.
execute if score #hit_x spell_trail_motion matches 1 run function pack:main/spells/function/api/spell_trails/private/select_bounce_normal_x
execute if score #hit_y spell_trail_motion matches 1 unless score #normal_found spell_trail_motion matches 1 run function pack:main/spells/function/api/spell_trails/private/select_bounce_normal_y
execute if score #hit_y spell_trail_motion matches 1 if score #normal_found spell_trail_motion matches 1 if score #abs_vy spell_trail_motion > #normal_abs spell_trail_motion run function pack:main/spells/function/api/spell_trails/private/select_bounce_normal_y
execute if score #hit_z spell_trail_motion matches 1 unless score #normal_found spell_trail_motion matches 1 run function pack:main/spells/function/api/spell_trails/private/select_bounce_normal_z
execute if score #hit_z spell_trail_motion matches 1 if score #normal_found spell_trail_motion matches 1 if score #abs_vz spell_trail_motion > #normal_abs spell_trail_motion run function pack:main/spells/function/api/spell_trails/private/select_bounce_normal_z

execute if score #normal_found spell_trail_motion matches 1 run function pack:main/spells/function/api/spell_trails/private/apply_bounce_reflection
