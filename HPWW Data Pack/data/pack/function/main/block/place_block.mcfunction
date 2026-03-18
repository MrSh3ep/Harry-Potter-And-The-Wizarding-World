stopsound @a[distance=..10]
advancement revoke @s only pack:blocks/place_block
tag @s add pack.placed_item_frame
execute as @e[type=item_frame, tag=pack.item_frame_block, distance=..10] at @s run function pack:main/block/determin_block
tag @s remove pack.placed_item_frame