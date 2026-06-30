execute if entity @s[tag=levioso_active] run attribute @s air_drag_modifier base reset

execute store result entity @s Motion[0] double 0.0001 run scoreboard players get $x player_motion.api.launch
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get $y player_motion.api.launch
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get $z player_motion.api.launch

execute if entity @s[tag=levioso_active] run schedule function pack:main/spells/function/levioso/function/set_air_drag 5t replace
