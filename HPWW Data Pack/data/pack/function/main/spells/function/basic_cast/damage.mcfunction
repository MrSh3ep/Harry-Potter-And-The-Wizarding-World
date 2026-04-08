damage @n[distance=0.1..1.3, type=!marker] 3
execute as @s at @s if entity @n[type=marker, tag=basic_cast, distance=0.1..1] run return run function pack:main/spells/function/basic_cast/merge

function pack:main/spells/function/basic_cast/kill