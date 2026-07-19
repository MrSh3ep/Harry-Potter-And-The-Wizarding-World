scoreboard players set #hit_x spell_trail_motion 0
scoreboard players set #hit_y spell_trail_motion 0
scoreboard players set #hit_z spell_trail_motion 0
scoreboard players set #hit_any spell_trail_motion 0
scoreboard players set #normal_found spell_trail_motion 0

execute if score #vx spell_trail_motion matches 1.. positioned ~0.08 ~1 ~ unless block ~ ~ ~ #hpww:spell_trail_passable run scoreboard players set #hit_x spell_trail_motion 1
execute if score #vx spell_trail_motion matches ..-1 positioned ~-0.08 ~1 ~ unless block ~ ~ ~ #hpww:spell_trail_passable run scoreboard players set #hit_x spell_trail_motion 1
execute if score #vy spell_trail_motion matches 1.. positioned ~ ~1.08 ~ unless block ~ ~ ~ #hpww:spell_trail_passable run scoreboard players set #hit_y spell_trail_motion 1
execute if score #vy spell_trail_motion matches ..-1 positioned ~ ~0.92 ~ unless block ~ ~ ~ #hpww:spell_trail_passable run scoreboard players set #hit_y spell_trail_motion 1
execute if score #vz spell_trail_motion matches 1.. positioned ~ ~1 ~0.08 unless block ~ ~ ~ #hpww:spell_trail_passable run scoreboard players set #hit_z spell_trail_motion 1
execute if score #vz spell_trail_motion matches ..-1 positioned ~ ~1 ~-0.08 unless block ~ ~ ~ #hpww:spell_trail_passable run scoreboard players set #hit_z spell_trail_motion 1

execute if score #hit_x spell_trail_motion matches 1 run scoreboard players set #hit_any spell_trail_motion 1
execute if score #hit_y spell_trail_motion matches 1 run scoreboard players set #hit_any spell_trail_motion 1
execute if score #hit_z spell_trail_motion matches 1 run scoreboard players set #hit_any spell_trail_motion 1
execute if score #hit_any spell_trail_motion matches 1 run function hpww:main/spells/function/api/spell_trails/private/resolve_collision_at_context
