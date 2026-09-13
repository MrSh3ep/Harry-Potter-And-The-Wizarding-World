# Non-player entities accept motion directly; use the same calculated vector as
# the player_motion path so both types rebound identically.
execute store result entity @s Motion[0] double 0.0001 run scoreboard players get $x player_motion.api.launch
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get $y player_motion.api.launch
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get $z player_motion.api.launch
