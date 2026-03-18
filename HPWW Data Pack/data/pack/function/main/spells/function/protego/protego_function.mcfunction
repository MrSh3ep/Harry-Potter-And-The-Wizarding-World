execute unless score @s protego_cooldown matches 0 run return run tellraw @s [{text:"Protego is on cooldown for ", bold:false, color:white}, {score:{name:"@s", objective:"protego_cooldown_visual"}, color:green}, {text:" seconds!", bold:false, color:white}]


scoreboard players set @s protego_cooldown 60 
tellraw @a[distance=0..15] [{"text":"<"},{"selector":"@s"},{text:">"},{text:" Protego!", bold:false, italic:true, color:aqua}]
particle dust{color:[0.0,0.84,0.9],scale:1} ~ ~1 ~ 1.254 1.254 1.254 1 550 force @a
execute at @s run playsound item.shield.block master @a[distance=0..15]