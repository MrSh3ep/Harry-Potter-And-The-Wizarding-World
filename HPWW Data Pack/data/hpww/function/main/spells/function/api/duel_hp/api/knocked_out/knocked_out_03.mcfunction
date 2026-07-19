scoreboard players set @s current_duel_hp 100
tellraw @a[distance=0..30] ["",{color:"white",bold:true,selector:"@s",extra:[" "]},{color:"red",text:"lost the duel!"}]
particle flame ~ ~ ~ 0 0 0 0.3 5 force @a
particle explosion ~ ~ ~ 0 0 0 0.3 5 force @a
playsound entity.generic.explode master @a[distance=0..30] ~ ~ ~
