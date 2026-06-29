scoreboard players add @s expelliarmus_wand_spin_frame 2
execute if score @s expelliarmus_wand_spin_frame matches 16.. run scoreboard players set @s expelliarmus_wand_spin_frame 0

execute if score @s expelliarmus_wand_spin_frame matches 0 run data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}}
execute if score @s expelliarmus_wand_spin_frame matches 1 run data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{left_rotation:[0.195f,0f,0f,0.981f],right_rotation:[0f,0f,0f,1f]}}
execute if score @s expelliarmus_wand_spin_frame matches 2 run data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{left_rotation:[0.383f,0f,0f,0.924f],right_rotation:[0f,0f,0f,1f]}}
execute if score @s expelliarmus_wand_spin_frame matches 3 run data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{left_rotation:[0.556f,0f,0f,0.831f],right_rotation:[0f,0f,0f,1f]}}
execute if score @s expelliarmus_wand_spin_frame matches 4 run data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{left_rotation:[0.707f,0f,0f,0.707f],right_rotation:[0f,0f,0f,1f]}}
execute if score @s expelliarmus_wand_spin_frame matches 5 run data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{left_rotation:[0.831f,0f,0f,0.556f],right_rotation:[0f,0f,0f,1f]}}
execute if score @s expelliarmus_wand_spin_frame matches 6 run data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{left_rotation:[0.924f,0f,0f,0.383f],right_rotation:[0f,0f,0f,1f]}}
execute if score @s expelliarmus_wand_spin_frame matches 7 run data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{left_rotation:[0.981f,0f,0f,0.195f],right_rotation:[0f,0f,0f,1f]}}
execute if score @s expelliarmus_wand_spin_frame matches 8 run data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{left_rotation:[1f,0f,0f,0f],right_rotation:[0f,0f,0f,1f]}}
execute if score @s expelliarmus_wand_spin_frame matches 9 run data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{left_rotation:[0.981f,0f,0f,-0.195f],right_rotation:[0f,0f,0f,1f]}}
execute if score @s expelliarmus_wand_spin_frame matches 10 run data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{left_rotation:[0.924f,0f,0f,-0.383f],right_rotation:[0f,0f,0f,1f]}}
execute if score @s expelliarmus_wand_spin_frame matches 11 run data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{left_rotation:[0.831f,0f,0f,-0.556f],right_rotation:[0f,0f,0f,1f]}}
execute if score @s expelliarmus_wand_spin_frame matches 12 run data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{left_rotation:[0.707f,0f,0f,-0.707f],right_rotation:[0f,0f,0f,1f]}}
execute if score @s expelliarmus_wand_spin_frame matches 13 run data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{left_rotation:[0.556f,0f,0f,-0.831f],right_rotation:[0f,0f,0f,1f]}}
execute if score @s expelliarmus_wand_spin_frame matches 14 run data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{left_rotation:[0.383f,0f,0f,-0.924f],right_rotation:[0f,0f,0f,1f]}}
execute if score @s expelliarmus_wand_spin_frame matches 15 run data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{left_rotation:[0.195f,0f,0f,-0.981f],right_rotation:[0f,0f,0f,1f]}}
