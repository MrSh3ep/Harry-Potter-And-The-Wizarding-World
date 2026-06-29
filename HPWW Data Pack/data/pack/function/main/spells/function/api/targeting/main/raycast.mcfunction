tag @s add targeting_caster
execute anchored eyes positioned ^ ^ ^ run function #bs.raycast:run {with:{blocks:false,entities:true,ignored_entities:"#excluded_targeting",max_distance:20,on_entry_point:"function pack:main/spells/function/api/targeting/main/on_targeting_hit"}}
tag @s remove targeting_caster

