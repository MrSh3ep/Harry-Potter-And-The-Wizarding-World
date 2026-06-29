
execute if entity @s[tag=levioso_active] run attribute @s air_drag_modifier base reset
summon marker ^ ^ ^1 {Tags:["depulso_motion_ancor"]}

execute store result score #depulso_x1 spell_trail_motion run data get entity @s Pos[0] 5000
execute store result score #depulso_y1 spell_trail_motion run data get entity @s Pos[1] 5000
execute store result score #depulso_z1 spell_trail_motion run data get entity @s Pos[2] 5000

execute store result score #depulso_x2 spell_trail_motion run data get entity @e[tag=depulso_motion_ancor,limit=1,sort=nearest,distance=0..,type=marker] Pos[0] 5000
execute store result score #depulso_y2 spell_trail_motion run data get entity @e[tag=depulso_motion_ancor,limit=1,sort=nearest,distance=0..,type=marker] Pos[1] 5000
execute store result score #depulso_z2 spell_trail_motion run data get entity @e[tag=depulso_motion_ancor,limit=1,sort=nearest,distance=0..,type=marker] Pos[2] 5000

scoreboard players operation #depulso_x2 spell_trail_motion -= #depulso_x1 spell_trail_motion
scoreboard players operation #depulso_y2 spell_trail_motion -= #depulso_y1 spell_trail_motion
scoreboard players operation #depulso_z2 spell_trail_motion -= #depulso_z1 spell_trail_motion

scoreboard players set #5000 spell_trail_motion 5000
scoreboard players operation #depulso_x2 spell_trail_motion *= $strength player_motion.api.launch
scoreboard players operation #depulso_y2 spell_trail_motion *= $strength player_motion.api.launch
scoreboard players operation #depulso_z2 spell_trail_motion *= $strength player_motion.api.launch
scoreboard players operation #depulso_x2 spell_trail_motion /= #5000 spell_trail_motion
scoreboard players operation #depulso_y2 spell_trail_motion /= #5000 spell_trail_motion
scoreboard players operation #depulso_z2 spell_trail_motion /= #5000 spell_trail_motion
scoreboard players set #depulso_y2 spell_trail_motion 5000

execute store result entity @s Motion[0] double 0.0001 run scoreboard players get #depulso_x2 spell_trail_motion
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get #depulso_y2 spell_trail_motion
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get #depulso_z2 spell_trail_motion

execute if entity @s[tag=levioso_active] run function pack:main/spells/function/levioso/function/end
kill @e[tag=depulso_motion_ancor,limit=1,sort=nearest,distance=0..,type=marker]
function pack:main/spells/function/depulso/function/hit_particles

