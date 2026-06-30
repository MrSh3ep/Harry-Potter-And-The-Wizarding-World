scoreboard players set $strength player_motion.api.launch 5000
execute store result storage player_motion:math strength double 0.0001 run scoreboard players get $strength player_motion.api.launch
execute as d4bd74a7-4e82-4a07-8850-dfc4d89f9e2f in minecraft:overworld positioned 0.0 0.0 0.0 run function player_motion:internal/math/looking_to_xyz with storage player_motion:math
execute store result score $x player_motion.api.launch run data get storage player_motion:math motion[0] 10000
scoreboard players set $y player_motion.api.launch 0
execute store result score $z player_motion.api.launch run data get storage player_motion:math motion[2] 10000
execute if entity @s[type=player] run function pack:main/spells/function/basic_cast/apply_hit_motion_player
execute unless entity @s[type=player] run function pack:main/spells/function/basic_cast/apply_hit_motion_entity
