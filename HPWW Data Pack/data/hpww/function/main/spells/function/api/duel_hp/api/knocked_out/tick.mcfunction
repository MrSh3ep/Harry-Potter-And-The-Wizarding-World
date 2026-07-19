execute if score @s current_duel_hp matches ..0 run function hpww:main/spells/function/api/duel_hp/api/knocked_out/knocked_out_03




execute as @a run return fail

execute if score @s current_duel_hp matches ..0 run function hpww:main/spells/function/api/duel_hp/api/knocked_out/knocked_out

execute if score @s in_die_loop matches 1 run function hpww:main/spells/function/api/duel_hp/api/knocked_out/die_loop


execute if score @s knocked_out_timer matches 0 run function hpww:main/spells/function/api/duel_hp/api/knocked_out/tick_line_13

