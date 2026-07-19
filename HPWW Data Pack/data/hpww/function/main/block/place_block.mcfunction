stopsound @a[distance=..10]
advancement revoke @s only hpww:blocks/place_block
tag @s add hpww.placed_item_frame
execute as @e[type=item_frame, tag=hpww.item_frame_block, distance=..10] at @s run function hpww:main/block/determin_block
tag @s remove hpww.placed_item_frame