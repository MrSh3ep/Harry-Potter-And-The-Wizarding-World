scoreboard players set #nx spell_trail_motion 0
scoreboard players set #ny spell_trail_motion 0
scoreboard players set #nz spell_trail_motion 0
scoreboard players set #-1 spell_trail_motion -1

scoreboard players operation #abs_vx spell_trail_motion = #vx spell_trail_motion
scoreboard players operation #abs_vy spell_trail_motion = #vy spell_trail_motion
scoreboard players operation #abs_vz spell_trail_motion = #vz spell_trail_motion
execute if score #abs_vx spell_trail_motion matches ..-1 run scoreboard players operation #abs_vx spell_trail_motion *= #-1 spell_trail_motion
execute if score #abs_vy spell_trail_motion matches ..-1 run scoreboard players operation #abs_vy spell_trail_motion *= #-1 spell_trail_motion
execute if score #abs_vz spell_trail_motion matches ..-1 run scoreboard players operation #abs_vz spell_trail_motion *= #-1 spell_trail_motion

# Pick one surface normal before reflecting. When multiple probes touch blocks,
# the dominant velocity component is treated as the impact face so the trail
# bounces off the surface it was heading into instead of reversing every axis.
execute if score #hit_x spell_trail_motion matches 1 run function hpww:main/spells/function/api/spell_trails/private/select_bounce_normal_x
execute if score #hit_y spell_trail_motion matches 1 unless score #normal_found spell_trail_motion matches 1 run function hpww:main/spells/function/api/spell_trails/private/select_bounce_normal_y
execute if score #hit_y spell_trail_motion matches 1 if score #normal_found spell_trail_motion matches 1 if score #abs_vy spell_trail_motion > #normal_abs spell_trail_motion run function hpww:main/spells/function/api/spell_trails/private/select_bounce_normal_y
execute if score #hit_z spell_trail_motion matches 1 unless score #normal_found spell_trail_motion matches 1 run function hpww:main/spells/function/api/spell_trails/private/select_bounce_normal_z
execute if score #hit_z spell_trail_motion matches 1 if score #normal_found spell_trail_motion matches 1 if score #abs_vz spell_trail_motion > #normal_abs spell_trail_motion run function hpww:main/spells/function/api/spell_trails/private/select_bounce_normal_z

execute if score #normal_found spell_trail_motion matches 1 run function hpww:main/spells/function/api/spell_trails/private/apply_bounce_reflection
