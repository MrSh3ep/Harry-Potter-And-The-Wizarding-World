# Arrow-specific rebound: reverse the actual impact vector so normal and tipped
# arrows, plus spectral arrows, fly back along their incoming path.
execute store result score $x player_motion.api.launch run data get entity @s Motion[0] 10000
execute store result score $y player_motion.api.launch run data get entity @s Motion[1] 10000
execute store result score $z player_motion.api.launch run data get entity @s Motion[2] 10000
scoreboard players operation $x player_motion.api.launch *= #constant.-1 player_motion.internal.const
scoreboard players operation $y player_motion.api.launch *= #constant.-1 player_motion.internal.const
scoreboard players operation $z player_motion.api.launch *= #constant.-1 player_motion.internal.const

# Ensure an arrow that touched the shield continues flying instead of remaining
# embedded in a block from the same tick.
data merge entity @s {inGround:0b,shake:0b}
execute store result entity @s Motion[0] double 0.0001 run scoreboard players get $x player_motion.api.launch
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get $y player_motion.api.launch
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get $z player_motion.api.launch
