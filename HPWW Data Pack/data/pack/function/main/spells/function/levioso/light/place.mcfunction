scoreboard players set #levioso_light_placed spell_trail_motion 0
execute if predicate pack:levioso_light/valid_pos run function pack:main/spells/function/levioso/light/summon
execute unless score #levioso_light_placed spell_trail_motion matches 1 run function pack:main/spells/function/levioso/light/find_place/layer_0
