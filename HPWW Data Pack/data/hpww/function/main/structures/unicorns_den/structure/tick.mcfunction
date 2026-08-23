

execute as @e[type=marker, tag=unicorns_den_spawn_marker, scores={hpww.unicorns_den.seting_up=0}] at @s if entity @p[distance=0..20] run function hpww:main/structures/unicorns_den/structure/setup
