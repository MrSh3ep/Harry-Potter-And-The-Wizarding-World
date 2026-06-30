attribute @s air_drag_modifier base reset
function player_motion:api/launch_xyz
execute if entity @s[tag=levioso_active] run function pack:main/spells/function/levioso/function/end
function pack:main/spells/function/depulso/function/hit_particles
