execute if entity @s[tag=levioso_active] run attribute @s air_drag_modifier base reset
summon marker ^ ^ ^1 {Tags:["basic_cast_motion_target"]}

execute store result score #basic_cast_x1 spell_trail_motion run data get entity @s Pos[0] 5000
execute store result score #basic_cast_y1 spell_trail_motion run data get entity @s Pos[1] 5000
execute store result score #basic_cast_z1 spell_trail_motion run data get entity @s Pos[2] 5000

execute store result score #basic_cast_x2 spell_trail_motion run data get entity @e[type=marker,tag=basic_cast_motion_target,limit=1,sort=nearest] Pos[0] 5000
execute store result score #basic_cast_y2 spell_trail_motion run data get entity @e[type=marker,tag=basic_cast_motion_target,limit=1,sort=nearest] Pos[1] 5000
execute store result score #basic_cast_z2 spell_trail_motion run data get entity @e[type=marker,tag=basic_cast_motion_target,limit=1,sort=nearest] Pos[2] 5000

scoreboard players operation #basic_cast_x2 spell_trail_motion -= #basic_cast_x1 spell_trail_motion
scoreboard players operation #basic_cast_y2 spell_trail_motion -= #basic_cast_y1 spell_trail_motion
scoreboard players operation #basic_cast_z2 spell_trail_motion -= #basic_cast_z1 spell_trail_motion

scoreboard players set #5000 spell_trail_motion 5000
scoreboard players operation #basic_cast_x2 spell_trail_motion *= $strength player_motion.api.launch
scoreboard players operation #basic_cast_y2 spell_trail_motion *= $strength player_motion.api.launch
scoreboard players operation #basic_cast_z2 spell_trail_motion *= $strength player_motion.api.launch
scoreboard players operation #basic_cast_x2 spell_trail_motion /= #5000 spell_trail_motion
scoreboard players operation #basic_cast_y2 spell_trail_motion /= #5000 spell_trail_motion
scoreboard players operation #basic_cast_z2 spell_trail_motion /= #5000 spell_trail_motion
scoreboard players set #basic_cast_y2 spell_trail_motion 0

execute store result entity @s Motion[0] double 0.0001 run scoreboard players get #basic_cast_x2 spell_trail_motion
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get #basic_cast_y2 spell_trail_motion
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get #basic_cast_z2 spell_trail_motion

execute if entity @s[tag=levioso_active] run schedule function pack:main/spells/function/levioso/function/set_air_drag 5t replace
kill @e[type=marker,tag=basic_cast_motion_target,limit=1,sort=nearest]
