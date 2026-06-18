execute as @e if score @s levioso_spell_active.timer matches 1.. run scoreboard players remove @s levioso_spell_active.timer 1
execute as @e[tag=levioso_active] if score @s levioso_spell_active.timer matches ..0 as @s run function pack:main/spells/function/levioso/function/end

execute as @e[tag=levioso_active] if score @s levioso_spell_active.hit_count matches 3 as @s run function pack:main/spells/function/levioso/function/end

execute as @e[tag=levioso_active] at @s run function pack:main/spells/function/levioso/function/vfx
