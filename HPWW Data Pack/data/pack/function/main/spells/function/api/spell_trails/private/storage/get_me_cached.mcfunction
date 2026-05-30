execute store result storage pack:trail_storage args.UUID0 int 1 run scoreboard players get @s spell_uuid_0
execute store result storage pack:trail_storage args.UUID1 int 1 run scoreboard players get @s spell_uuid_1
execute store result storage pack:trail_storage args.UUID2 int 1 run scoreboard players get @s spell_uuid_2
execute store result storage pack:trail_storage args.UUID3 int 1 run scoreboard players get @s spell_uuid_3

function pack:main/spells/function/api/spell_trails/private/storage/zprivate/get_me with storage pack:trail_storage args
