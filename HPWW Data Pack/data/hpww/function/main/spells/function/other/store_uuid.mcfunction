data remove storage pdb:uuid_cache raw
data modify storage pdb:uuid_cache raw set from entity @s UUID
execute store result score @s spell_uuid_0 run data get storage pdb:uuid_cache raw[0]
execute store result score @s spell_uuid_1 run data get storage pdb:uuid_cache raw[1]
execute store result score @s spell_uuid_2 run data get storage pdb:uuid_cache raw[2]
execute store result score @s spell_uuid_3 run data get storage pdb:uuid_cache raw[3]
