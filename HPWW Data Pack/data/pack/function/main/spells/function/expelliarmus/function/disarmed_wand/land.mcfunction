execute if entity @s[tag=expelliarmus_wand_landed] run return fail
tag @s add expelliarmus_wand_landed
tp @s ~ ~-0.05 ~

scoreboard players reset @s expelliarmus_wand_age
scoreboard players reset @s expelliarmus_wand_spin
scoreboard players reset @s expelliarmus_wand_spin_frame
data merge entity @s {brightness:{sky:15,block:15},teleport_duration:1,interpolation_duration:2,transformation:{translation:[0f,0.08f,0f],scale:[0.75f,0.75f,0.75f],left_rotation:[0.707f,0f,0f,0.707f],right_rotation:[0f,0f,0f,1f]}}
execute at @s run summon interaction ~ ~0.01 ~ {Tags:["expelliarmus_wand_pickup"],width:0.85f,height:0.22f,response:1b}
playsound minecraft:block.wood.place master @a[distance=..10] ~ ~ ~ 0.5 1.4
