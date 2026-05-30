scoreboard players operation #normal_abs spell_trail_motion = #abs_vz spell_trail_motion
scoreboard players set #nx spell_trail_motion 0
scoreboard players set #ny spell_trail_motion 0
scoreboard players set #nz spell_trail_motion 0
execute if score #vz spell_trail_motion matches 1.. run scoreboard players set #nz spell_trail_motion -1
execute if score #vz spell_trail_motion matches ..-1 run scoreboard players set #nz spell_trail_motion 1
scoreboard players set #normal_found spell_trail_motion 1
