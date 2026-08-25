tag @s remove hpww.fade
gamemode spectator @s
effect give @s slowness 10 9 true
execute as @e[type=item_display, distance=0..2, tag=aj.hpww_trial_start_button.root] run function aj:hpww_trial_start_button/animations/activate/play
tp @s ~ ~ ~-3 0 0