scoreboard players set $strength player_motion.api.launch 5000
execute if entity @s[type=player] run function pack:main/spells/function/basic_cast/apply_hit_motion_player
execute unless entity @s[type=player] run function pack:main/spells/function/basic_cast/apply_hit_motion_entity