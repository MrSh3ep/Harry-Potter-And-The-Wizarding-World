scoreboard players set #levioso_light_exists spell_trail_motion 0
execute if block ~ ~ ~ minecraft:light run function pack:main/spells/function/lumos/light/prev_light/find
execute if score #levioso_light_exists spell_trail_motion matches 0 unless block ~ ~ ~ minecraft:light run function pack:main/spells/function/lumos/light/summon_new
scoreboard players set #levioso_light_placed spell_trail_motion 1
