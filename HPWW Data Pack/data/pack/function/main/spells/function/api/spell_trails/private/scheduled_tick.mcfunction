execute store result score #current spell_trail_schedule run time query gametime
execute as @e[type=armor_stand, tag=spell_trail] if score @s spell_trail_schedule = #current spell_trail_schedule at @s run function pack:main/spells/function/api/spell_trails/private/function_loop
