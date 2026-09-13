# This function runs as the entity that touched Protego. Its execution position
# is the item display and its horizontal rotation points away from that display.
# Use the impact velocity as launch strength, while retaining a small minimum
# push so stationary entities cannot remain inside the shield.
execute store result score $x player_motion.api.launch run data get entity @s Motion[0] 10000
execute store result score $y player_motion.api.launch run data get entity @s Motion[1] 10000
execute store result score $z player_motion.api.launch run data get entity @s Motion[2] 10000

scoreboard players operation $strength player_motion.api.launch = $x player_motion.api.launch
execute if score $strength player_motion.api.launch matches ..-1 run scoreboard players operation $strength player_motion.api.launch *= #constant.-1 player_motion.internal.const
execute if score $y player_motion.api.launch matches ..-1 run scoreboard players operation $y player_motion.api.launch *= #constant.-1 player_motion.internal.const
execute if score $z player_motion.api.launch matches ..-1 run scoreboard players operation $z player_motion.api.launch *= #constant.-1 player_motion.internal.const
scoreboard players operation $strength player_motion.api.launch += $y player_motion.api.launch
scoreboard players operation $strength player_motion.api.launch += $z player_motion.api.launch
execute if score $strength player_motion.api.launch matches ..4999 run scoreboard players set $strength player_motion.api.launch 5000
execute if score $strength player_motion.api.launch matches 25001.. run scoreboard players set $strength player_motion.api.launch 25000

# Arrows are projectiles, so preserve their impact trajectory by reversing it
# instead of applying the general radial entity impulse below.
execute if entity @s[type=arrow] run return run function hpww:main/spells/function/protego/bounce_arrow
execute if entity @s[type=spectral_arrow] run return run function hpww:main/spells/function/protego/bounce_arrow

# Convert the outward-facing shield rotation into an X/Z motion vector.
execute store result storage player_motion:math strength double 0.0001 run scoreboard players get $strength player_motion.api.launch
execute as d4bd74a7-4e82-4a07-8850-dfc4d89f9e2f in minecraft:overworld positioned 0.0 0.0 0.0 run function player_motion:internal/math/looking_to_xyz with storage player_motion:math
execute store result score $x player_motion.api.launch run data get storage player_motion:math motion[0] 10000
execute store result score $z player_motion.api.launch run data get storage player_motion:math motion[2] 10000
scoreboard players operation $y player_motion.api.launch = $strength player_motion.api.launch
scoreboard players operation $y player_motion.api.launch /= #constant.2 player_motion.internal.const

execute if entity @s[type=player] run function hpww:main/spells/function/protego/bounce_player
execute unless entity @s[type=player] run function hpww:main/spells/function/protego/bounce_entity
