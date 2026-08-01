function hpww:main/spells/function/api/spell_cooldown/read_cooldown {spell:"protego"}
execute if score @s cooldown_api matches 1.. run return run function hpww:main/spells/function/protego/protego_sfx

function hpww:main/spells/function/api/spell_cooldown/start_cooldown {spell:"protego",time:2}
scoreboard players set @s protego_activated 35

tellraw @a[distance=0..15] [{"text":"<"},{"selector":"@s"},{text:">"},{text:" Protego!", bold:false, italic:true, color:aqua}]


execute as @s at @s positioned ~ ~0.1 ~ rotated 0 0 run function aj:protego/summon {args:{animation:'protego_active'}}
execute at @s as @e[type=item_display, tag=aj.protego.root, limit=1, sort=nearest] run function aj:protego/animations/protego_active/play
playsound minecraft:entity.breeze.charge master @a ~ ~ ~ 3

