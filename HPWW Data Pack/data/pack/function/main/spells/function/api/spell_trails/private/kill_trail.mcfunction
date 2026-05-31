execute at @s run summon marker ~ ~ ~ {Tags:[trail_entity_checker], NoGravity:1b}
scoreboard players set @s spell_trail_life_ticks 0


function pack:main/spells/function/api/spell_trails/private/storage/get_me
execute at @s run execute as @n[type=marker, limit=1, tag=trail_entity_checker] at @s as @s run function pack:main/spells/function/api/spell_trails/private/trail_end_function with storage pack:trail_storage out.trail_end_function

kill @s