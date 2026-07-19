function mcfentitymap:internal/uuid/get_uuid

execute unless data storage pack:trail_storage in.UUID run data modify storage pack:trail_storage in.UUID set from entity @s UUID

function pack:main/spells/function/api/spell_trails/private/storage/zprivate/save_me with storage uuid:out
