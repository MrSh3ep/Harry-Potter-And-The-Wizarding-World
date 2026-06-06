damage @n[distance=0.1..1.3, type=!player] 3
execute as @n[distance=0.1..1.3] run function pack:main/spells/function/api/duel_hp/api/current_hp/subtract_current {score:5}


particle crimson_spore ~ ~1 ~ 0.5 0.5 0.5 2 100 force
particle flash{color:-1762573513} ~ ~ ~ 0.5 0.5 0.5 1 1 force @a
execute at @s run playsound minecraft:block.creaking_heart.step master @a ~ ~ ~ 3

#kills the temp armorstad (og made for location pourpouses only LOL)
kill @s