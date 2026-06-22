tag @s remove levioso_active
execute as @s run attribute @s air_drag_modifier base reset
execute as @s run attribute @s gravity base reset
scoreboard players set @s levioso_spell_active.hit_count 0
scoreboard players set @s SpellWheelStatus 1
