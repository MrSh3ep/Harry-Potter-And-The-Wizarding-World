execute store result score #current spell_trail_schedule run time query gametime
scoreboard players operation @s spell_trail_schedule = #current spell_trail_schedule
scoreboard players add @s spell_trail_schedule 1
schedule function pack:main/spells/function/api/spell_trails/private/scheduled_tick 1t replace
