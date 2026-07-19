setblock ~ ~ ~ oak_planks
playsound block.wood.place master @a[distance=0..5]
execute if block ~ ~ ~ water run setblock ~ ~ ~ oak_planks




execute align y run summon item_display ~ ~ ~ {Tags:["hpww.custom_block","hpww.wand_crafting_table_block","hpww.new_wand_crafting_table_block"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:item_frame",count:1,components:{"minecraft:item_model":"hpww_blocks:wand_crafting_table"}}, brightness:{block:15, sky:15}}
execute if entity @a[tag=hpww.placed_item_frame,distance=..10,limit=1,sort=nearest,y_rotation=-45..45] run data merge entity @n[type=item_display,tag=hpww.new_wand_crafting_table_block,distance=..2] {Rotation:[180f,0f]}
execute if entity @a[tag=hpww.placed_item_frame,distance=..10,limit=1,sort=nearest,y_rotation=45..135] run data merge entity @n[type=item_display,tag=hpww.new_wand_crafting_table_block,distance=..2] {Rotation:[-90f,0f]}
execute if entity @a[tag=hpww.placed_item_frame,distance=..10,limit=1,sort=nearest,y_rotation=135..180] run data merge entity @n[type=item_display,tag=hpww.new_wand_crafting_table_block,distance=..2] {Rotation:[0f,0f]}
execute if entity @a[tag=hpww.placed_item_frame,distance=..10,limit=1,sort=nearest,y_rotation=-180..-135] run data merge entity @n[type=item_display,tag=hpww.new_wand_crafting_table_block,distance=..2] {Rotation:[0f,0f]}
execute if entity @a[tag=hpww.placed_item_frame,distance=..10,limit=1,sort=nearest,y_rotation=-135..-45] run data merge entity @n[type=item_display,tag=hpww.new_wand_crafting_table_block,distance=..2] {Rotation:[90f,0f]}
tag @n[type=item_display,tag=hpww.new_wand_crafting_table_block,distance=..2] remove hpww.new_wand_crafting_table_block


summon armor_stand ~ ~1 ~ { Invisible:true, Invulnerable:true, Small: true, Tags:[wand_crafting_table_detector]}
