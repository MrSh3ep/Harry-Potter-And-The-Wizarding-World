execute if score @s current_duel_hp matches ..0 run function pack:main/spells/function/api/duel_hp/api/knocked_out/knocked_out

execute if score @s in_die_loop matches 1 run function pack:main/spells/function/api/duel_hp/api/knocked_out/die_loop


execute if score @s knocked_out_timer matches 0 if score @s current_duel_hp matches 1.. if score @s in_die_loop matches 1 run function pack:main/spells/function/api/duel_hp/api/knocked_out/re_alive

execute if score @s knocked_out_timer matches 0 run scoreboard players set @s in_die_loop 0
