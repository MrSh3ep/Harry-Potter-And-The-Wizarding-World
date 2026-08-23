#runs at and as the unicorn dens summon marker

scoreboard players set @s hpww.unicorns_den.seting_up 1
execute positioned ~-1.5 ~1 ~.5 run function aj:hpww_alter/summon {args:{}}
execute positioned ~-1.5 ~1.3 ~-2 rotated 0 0 run function aj:hpww_trial_start_button/summon {args:{animation:"idle", start_animation:true}}
