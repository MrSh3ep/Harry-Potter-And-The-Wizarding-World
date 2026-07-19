$execute if data storage pdb:main out.hotbar.$(slot) run summon item ~ ~ ~ {PickupDelay:32767,Age:-32768,Tags:["hpww_restore_hotbar"],Item:{id:"minecraft:stone",count:1}}
$execute if data storage pdb:main out.hotbar.$(slot) run data modify entity @n[type=item,tag=hpww_restore_hotbar,distance=..1] Item set from storage pdb:main out.hotbar.$(slot)
execute if entity @n[type=item,tag=hpww_restore_hotbar,distance=..1] run data remove entity @n[type=item,tag=hpww_restore_hotbar,distance=..1] Item.Slot
$execute if data storage pdb:main out.hotbar.$(slot) run item replace entity @s hotbar.$(slot) from entity @n[type=item,tag=hpww_restore_hotbar,distance=..1] contents
kill @e[type=item,tag=hpww_restore_hotbar,distance=..1]
