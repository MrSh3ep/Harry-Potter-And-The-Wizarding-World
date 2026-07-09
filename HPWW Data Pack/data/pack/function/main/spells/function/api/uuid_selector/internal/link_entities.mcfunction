tag @s add hpww.api.uuid_selector.linker
$execute as $(entity) unless score @s hpww.api.UUID_Linked matches 1.. run function pack:main/spells/function/api/uuid_selector/internal/link_to_tagged_player
$execute as $(entity) if score @s hpww.api.UUID_Linked matches 1.. if score @s hpww.api.UUID0 = @a[tag=hpww.api.uuid_selector.linker,limit=1] spell_uuid_0 if score @s hpww.api.UUID1 = @a[tag=hpww.api.uuid_selector.linker,limit=1] spell_uuid_1 if score @s hpww.api.UUID2 = @a[tag=hpww.api.uuid_selector.linker,limit=1] spell_uuid_2 if score @s hpww.api.UUID3 = @a[tag=hpww.api.uuid_selector.linker,limit=1] spell_uuid_3 run function pack:main/spells/function/api/uuid_selector/internal/link_to_tagged_player
tag @s remove hpww.api.uuid_selector.linker
