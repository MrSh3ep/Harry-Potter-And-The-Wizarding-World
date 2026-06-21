execute positioned ~1 ~ ~1 if predicate pack:levioso_light/valid_pos run function pack:main/spells/function/levioso/light/summon
execute unless score #levioso_light_placed spell_trail_motion matches 1 positioned ~-1 ~ ~1 if predicate pack:levioso_light/valid_pos run function pack:main/spells/function/levioso/light/summon
execute unless score #levioso_light_placed spell_trail_motion matches 1 positioned ~1 ~ ~-1 if predicate pack:levioso_light/valid_pos run function pack:main/spells/function/levioso/light/summon
execute unless score #levioso_light_placed spell_trail_motion matches 1 positioned ~-1 ~ ~-1 if predicate pack:levioso_light/valid_pos run function pack:main/spells/function/levioso/light/summon
