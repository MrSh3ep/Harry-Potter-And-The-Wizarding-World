

execute as @e[type=marker, tag=unicorns_den_spawn_marker, scores={hpww.unicorns_den.seting_up=0}] at @s if entity @p[distance=0..20] run function hpww:main/structures/unicorns_den/structure/setup


execute at @e[type=item_display, tag=aj.hpww_trial_start_button.root] as @a[distance=0..10] as @s run function hpww:main/structures/unicorns_den/structure/check_action_bar

