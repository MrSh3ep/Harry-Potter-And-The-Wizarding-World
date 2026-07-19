# Reflect the incoming direction with v' = v - 2(v dot n)n.
# The selected normal is unit-length, so no n dot n division is needed.

scoreboard players operation #dot spell_trail_motion = #vx spell_trail_motion
scoreboard players operation #dot spell_trail_motion *= #nx spell_trail_motion

scoreboard players operation #tmp spell_trail_motion = #vy spell_trail_motion
scoreboard players operation #tmp spell_trail_motion *= #ny spell_trail_motion
scoreboard players operation #dot spell_trail_motion += #tmp spell_trail_motion

scoreboard players operation #tmp spell_trail_motion = #vz spell_trail_motion
scoreboard players operation #tmp spell_trail_motion *= #nz spell_trail_motion
scoreboard players operation #dot spell_trail_motion += #tmp spell_trail_motion

scoreboard players operation #dot spell_trail_motion *= #2 spell_trail_motion

scoreboard players operation #tmp spell_trail_motion = #dot spell_trail_motion
scoreboard players operation #tmp spell_trail_motion *= #nx spell_trail_motion
scoreboard players operation #vx spell_trail_motion -= #tmp spell_trail_motion

scoreboard players operation #tmp spell_trail_motion = #dot spell_trail_motion
scoreboard players operation #tmp spell_trail_motion *= #ny spell_trail_motion
scoreboard players operation #vy spell_trail_motion -= #tmp spell_trail_motion

scoreboard players operation #tmp spell_trail_motion = #dot spell_trail_motion
scoreboard players operation #tmp spell_trail_motion *= #nz spell_trail_motion
scoreboard players operation #vz spell_trail_motion -= #tmp spell_trail_motion

function hpww:main/spells/function/api/spell_trails/private/apply_bounce
