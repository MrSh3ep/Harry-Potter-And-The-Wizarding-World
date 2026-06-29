scoreboard players set $strength player_motion.api.launch 20000
execute if entity @s[type=player] run function pack:main/spells/function/depulso/function/motion_player
execute unless entity @s[type=player] run function pack:main/spells/function/depulso/function/motion_entity