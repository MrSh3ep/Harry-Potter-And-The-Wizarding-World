data remove storage pdb:main out
execute if score @s spell_uuid_0 matches 0 if score @s spell_uuid_1 matches 0 if score @s spell_uuid_2 matches 0 if score @s spell_uuid_3 matches 0 run function hpww:main/spells/function/other/store_uuid
function pdb:internal/uuid/get_cached
function pdb:zprivate/get_me with storage uuid:out
execute unless data storage pdb:main out.UUID run function pdb:migrate_legacy_cached
execute unless data storage pdb:main out.UUID run data modify storage pdb:main out.UUID set from entity @s UUID
