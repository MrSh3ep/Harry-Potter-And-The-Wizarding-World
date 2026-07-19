execute anchored eyes positioned ^0.35 ^-0.35 ^0.65 run summon item_display ~ ~ ~ {Tags:["expelliarmus_disarmed_wand","expelliarmus_new_disarmed_wand"],item:{id:"minecraft:stone",count:1},teleport_duration:1,interpolation_duration:2,start_interpolation:0,transformation:{translation:[0f,0f,0f],scale:[0.75f,0.75f,0.75f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}}
data modify entity @n[type=item_display,tag=expelliarmus_new_disarmed_wand,distance=..3] item set from storage hpww:expelliarmus_disarm item
scoreboard players set @n[type=item_display,tag=expelliarmus_new_disarmed_wand,distance=..3] expelliarmus_wand_age 0
scoreboard players set @n[type=item_display,tag=expelliarmus_new_disarmed_wand,distance=..3] expelliarmus_wand_spin 0
scoreboard players set @n[type=item_display,tag=expelliarmus_new_disarmed_wand,distance=..3] expelliarmus_wand_spin_frame 0
data modify entity @n[type=item_display,tag=expelliarmus_new_disarmed_wand,distance=..3] Rotation set value [0f,0f]
execute store result entity @n[type=item_display,tag=expelliarmus_new_disarmed_wand,distance=..3] Rotation[0] float 1 run random value 0..359
tag @n[type=item_display,tag=expelliarmus_new_disarmed_wand,distance=..3] remove expelliarmus_new_disarmed_wand
playsound minecraft:entity.item.break master @a[distance=..12] ~ ~ ~ 0.8 1.3
