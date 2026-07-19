function mcfentitymap:internal/uuid/get_uuid

execute unless data storage hpww:trail_storage in.UUID run data modify storage hpww:trail_storage in.UUID set from entity @s UUID

function hpww:main/spells/function/api/spell_trails/private/storage/zprivate/save_me with storage uuid:out
