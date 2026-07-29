# Run the supplied command as and at the player stored on this linked entity.
tag @s add hpww.api.uuid_selector.player_runner
$execute as @a if score @e[tag=hpww.api.uuid_selector.player_runner,limit=1] hpww.api.UUID_Linked matches 1.. if score @s spell_uuid_0 = @e[tag=hpww.api.uuid_selector.player_runner,limit=1] hpww.api.UUID0 if score @s spell_uuid_1 = @e[tag=hpww.api.uuid_selector.player_runner,limit=1] hpww.api.UUID1 if score @s spell_uuid_2 = @e[tag=hpww.api.uuid_selector.player_runner,limit=1] hpww.api.UUID2 if score @s spell_uuid_3 = @e[tag=hpww.api.uuid_selector.player_runner,limit=1] hpww.api.UUID3 at @s run $(command)
tag @s remove hpww.api.uuid_selector.player_runner
