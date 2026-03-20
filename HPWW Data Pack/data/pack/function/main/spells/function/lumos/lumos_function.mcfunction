# Ran from the pages lc and rc detection

execute if score @s lumos_activated matches 1 run return run function pack:main/spells/function/lumos/lumos_end

execute unless score @s lumos_cooldown matches 0 run return run tellraw @s [{"text":"Lumos ", "color":"#ffed87"},{text:"is on cooldown for ", bold:false, color:white}, {score:{name:"@s", objective:"lumos_cooldown_visual"}, color:green}, {text:" seconds!", bold:false, color:white}]




tellraw @a[distance=0..15] [{"text":"<"},{"selector":"@s"},{text:">"},{text:" Lumos!", bold:false, italic:true, color:"#ffed87"}]

execute at @s run playsound entity.breeze.deflect master @a[distance=0..15] ~ ~ ~ 2
particle dust{color:[1.0,0.93,0.46],scale:1} ~ ~1 ~ 1.254 1.254 1.254 1 50 force @a



scoreboard players set @s lumos_activated 1

 