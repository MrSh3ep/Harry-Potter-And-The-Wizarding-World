attribute @s air_drag_modifier base reset
function player_motion:api/launch_xyz
execute if entity @s[tag=levioso_active] run schedule function pack:main/spells/function/levioso/function/set_air_drag 3t replace
