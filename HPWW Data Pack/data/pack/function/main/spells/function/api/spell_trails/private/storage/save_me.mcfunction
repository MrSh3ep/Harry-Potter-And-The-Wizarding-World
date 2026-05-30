data modify storage pack:trail_storage temp set from entity @s UUID
data modify storage pack:trail_storage args.UUID0 set from storage pack:trail_storage temp[0]
data modify storage pack:trail_storage args.UUID1 set from storage pack:trail_storage temp[1]
data modify storage pack:trail_storage args.UUID2 set from storage pack:trail_storage temp[2]
data modify storage pack:trail_storage args.UUID3 set from storage pack:trail_storage temp[3]

execute unless data storage pack:trail_storage in.UUID run data modify storage pack:trail_storage in.UUID set from entity @s UUID

function pack:main/spells/function/api/spell_trails/private/storage/zprivate/save_me with storage pack:trail_storage args
