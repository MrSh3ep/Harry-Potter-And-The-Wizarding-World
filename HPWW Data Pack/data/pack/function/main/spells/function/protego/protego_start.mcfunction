execute unless score @s protego_cooldown matches 0 run return run function pack:main/spells/function/protego/protego_sfx

scoreboard players set @s protego_cooldown 140
scoreboard players set @s protego_activated 30

tellraw @a[distance=0..15] [{"text":"<"},{"selector":"@s"},{text:">"},{text:" Protego!", bold:false, italic:true, color:aqua}]
particle dust{color:[0.0,0.84,0.9],scale:1} ~ ~1 ~ 1.254 1.254 1.254 1 550 force @a

playsound entity.warden.sonic_charge master @a ~ ~ ~ 3