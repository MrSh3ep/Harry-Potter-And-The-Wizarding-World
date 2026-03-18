setblock ~ ~ ~ oak_planks
playsound block.wood.place master @a[distance=0..5]
execute if block ~ ~ ~ water run setblock ~ ~ ~ oak_planks




execute align y run summon item_display ~ ~ ~ {Tags:["pack.custom_block","pack.wand_crafting_table_block"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1.02f,1.02f,1.02f]},item:{id:"minecraft:item_frame",count:1,components:{"minecraft:item_model":"hpww_blocks:wand_crafting_table"}}, brightness:{block:15, sky:15}}


summon armor_stand ~ ~1 ~ { Invisible:true, Invulnerable:true, Small: true, Tags:[wand_crafting_table_detector]}