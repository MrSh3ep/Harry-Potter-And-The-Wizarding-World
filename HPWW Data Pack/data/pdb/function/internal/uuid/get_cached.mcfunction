scoreboard players operation @s uuid = @s spell_uuid_3
scoreboard players operation @s uuid.0 = @s spell_uuid_3
execute store result storage uuid:temp 7 int 1 run scoreboard players operation @s uuid.0 %= 65536 __int__
execute store result storage uuid:temp 6 int 1 run scoreboard players operation @s uuid /= 65536 __int__

scoreboard players operation @s uuid = @s spell_uuid_2
scoreboard players operation @s uuid.0 = @s spell_uuid_2
execute store result storage uuid:temp 5 int 1 run scoreboard players operation @s uuid.0 %= 65536 __int__
execute store result storage uuid:temp 4 int 1 run scoreboard players operation @s uuid /= 65536 __int__

scoreboard players operation @s uuid = @s spell_uuid_1
scoreboard players operation @s uuid.0 = @s spell_uuid_1
execute store result storage uuid:temp 3 int 1 run scoreboard players operation @s uuid.0 %= 65536 __int__
execute store result storage uuid:temp 2 int 1 run scoreboard players operation @s uuid /= 65536 __int__

scoreboard players operation @s uuid = @s spell_uuid_0
scoreboard players operation @s uuid.0 = @s spell_uuid_0
execute store result storage uuid:temp 1 int 1 run scoreboard players operation @s uuid.0 %= 65536 __int__
execute store result storage uuid:temp 0 int 1 run scoreboard players operation @s uuid /= 65536 __int__

function mcfentitymap:internal/uuid/map with storage uuid:temp
function mcfentitymap:internal/uuid/result with storage uuid:temp
