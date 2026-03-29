execute unless score @s protego_cooldown matches 0 run return run function pack:main/spells/function/protego/protego_sfx

scoreboard players set @s protego_cooldown 140
scoreboard players set @s protego_activated 35

tellraw @a[distance=0..15] [{"text":"<"},{"selector":"@s"},{text:">"},{text:" Protego!", bold:false, italic:true, color:aqua}]


execute as @s at @s positioned ~ ~0.1 ~ rotated 0 0 run function animated_java:protego/summon {args:{animation:'protego_active'}}
execute at @s as @e[type=item_display, tag=aj.protego.root, limit=1, sort=nearest] run function animated_java:protego/animations/protego_active/play
playsound minecraft:entity.breeze.charge master @a ~ ~ ~ 3

