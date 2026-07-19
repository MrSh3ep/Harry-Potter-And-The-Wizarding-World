scoreboard players set #levioso_light_placed spell_trail_motion 0
execute if predicate hpww:levioso_light/valid_pos run function hpww:main/spells/function/lumos/light/summon
execute unless score #levioso_light_placed spell_trail_motion matches 1 run function hpww:main/spells/function/lumos/light/find_place/layer_0
