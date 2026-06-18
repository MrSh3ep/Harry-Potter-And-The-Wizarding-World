damage @n[distance=0.1..1.4, type=!player] 3
execute as @n[distance=0.1..1.4] run function pack:main/spells/function/api/duel_hp/api/current_hp/subtract_current {score:5}

scoreboard players add @n[tag=levioso_active, type=!#pack:nonlevioso] levioso_spell_active.hit_count 1
execute as @n[type=!#pack:nonlevioso, distance=0.1..1.4] at @s run function pack:main/spells/function/basic_cast/apply_hit_motion

particle crimson_spore ~ ~1 ~ 0.5 0.5 0.5 2 100 force
particle flash{color:-1762573513} ~ ~ ~ 0.5 0.5 0.5 1 1 force @a
execute at @s run playsound minecraft:block.creaking_heart.step master @a ~ ~ ~ 3

#kills the temp armorstad (og made for location pourpouses only LOL)
kill @s