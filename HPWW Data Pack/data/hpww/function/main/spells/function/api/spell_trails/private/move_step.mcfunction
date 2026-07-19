scoreboard players operation #step_speed spell_trail_motion = #move_remaining spell_trail_motion
execute if score #step_speed spell_trail_motion > #max_step spell_trail_motion run scoreboard players operation #step_speed spell_trail_motion = #max_step spell_trail_motion

# Sweep the next movement slice before teleporting so fast trails cannot tunnel
# through blocks between ticks. #speed_scale / 10 keeps each slice at 0.1 block.
execute if score #step_speed spell_trail_motion <= #half_step spell_trail_motion positioned ^ ^ ^0.05 run function hpww:main/spells/function/api/spell_trails/private/check_collision_at_context
execute if score #step_speed spell_trail_motion > #half_step spell_trail_motion positioned ^ ^ ^0.1 run function hpww:main/spells/function/api/spell_trails/private/check_collision_at_context

execute unless score #normal_found spell_trail_motion matches 1 if score #step_speed spell_trail_motion = #max_step spell_trail_motion run tp @s ^ ^ ^0.1
execute unless score #normal_found spell_trail_motion matches 1 unless score #step_speed spell_trail_motion = #max_step spell_trail_motion at @s run function hpww:main/spells/function/api/spell_trails/private/move_step_apply

scoreboard players operation #move_remaining spell_trail_motion -= #step_speed spell_trail_motion
execute if score #move_remaining spell_trail_motion matches 1.. at @s run function hpww:main/spells/function/api/spell_trails/private/move_step
