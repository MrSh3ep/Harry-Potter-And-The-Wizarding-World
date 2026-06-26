execute if score @s current_duel_hp matches 1.. if score @s in_die_loop matches 1 run function pack:main/spells/function/api/duel_hp/api/knocked_out/re_alive
scoreboard players set @s in_die_loop 0
