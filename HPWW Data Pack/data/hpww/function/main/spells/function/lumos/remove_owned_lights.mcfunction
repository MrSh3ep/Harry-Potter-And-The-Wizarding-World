tag @s add lumos_owner_check
execute as @e[type=marker,tag=light] at @s if score @s spell_uuid_0 = @a[tag=lumos_owner_check,limit=1] spell_uuid_0 if score @s spell_uuid_1 = @a[tag=lumos_owner_check,limit=1] spell_uuid_1 if score @s spell_uuid_2 = @a[tag=lumos_owner_check,limit=1] spell_uuid_2 if score @s spell_uuid_3 = @a[tag=lumos_owner_check,limit=1] spell_uuid_3 run function hpww:main/spells/function/lumos/replace_old_block
tag @s remove lumos_owner_check
