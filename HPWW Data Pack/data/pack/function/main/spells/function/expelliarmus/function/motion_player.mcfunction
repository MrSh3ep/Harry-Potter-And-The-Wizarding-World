attribute @s air_drag_modifier base reset
function player_motion:api/launch_looking
scoreboard players set @s player_motion.internal.motion.y 5000
execute if entity @s[tag=levioso_active] run function pack:main/spells/function/levioso/function/end
function pack:main/spells/function/depulso/function/hit_particles
