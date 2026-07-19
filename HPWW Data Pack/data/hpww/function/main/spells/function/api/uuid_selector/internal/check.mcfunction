scoreboard players set @s hpww.api.UUID_Selector 0
tag @s add hpww.api.uuid_selector.checking
$execute as $(entity) if score @s hpww.api.UUID_Linked matches 1.. if score @s hpww.api.UUID0 = @a[tag=hpww.api.uuid_selector.checking,limit=1] spell_uuid_0 if score @s hpww.api.UUID1 = @a[tag=hpww.api.uuid_selector.checking,limit=1] spell_uuid_1 if score @s hpww.api.UUID2 = @a[tag=hpww.api.uuid_selector.checking,limit=1] spell_uuid_2 if score @s hpww.api.UUID3 = @a[tag=hpww.api.uuid_selector.checking,limit=1] spell_uuid_3 run scoreboard players set @a[tag=hpww.api.uuid_selector.checking,limit=1] hpww.api.UUID_Selector 1
tag @s remove hpww.api.uuid_selector.checking
