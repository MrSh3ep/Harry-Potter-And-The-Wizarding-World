execute positioned ~1 ~ ~1 if predicate hpww:levioso_light/valid_pos run function hpww:main/spells/function/lumos/light/summon
execute unless score #levioso_light_placed spell_trail_motion matches 1 positioned ~-1 ~ ~1 if predicate hpww:levioso_light/valid_pos run function hpww:main/spells/function/lumos/light/summon
execute unless score #levioso_light_placed spell_trail_motion matches 1 positioned ~1 ~ ~-1 if predicate hpww:levioso_light/valid_pos run function hpww:main/spells/function/lumos/light/summon
execute unless score #levioso_light_placed spell_trail_motion matches 1 positioned ~-1 ~ ~-1 if predicate hpww:levioso_light/valid_pos run function hpww:main/spells/function/lumos/light/summon
