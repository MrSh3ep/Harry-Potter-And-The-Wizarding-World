scoreboard players set @s lumos_activated 0
scoreboard players set @s lumos_cooldown 100

execute as @e[type=marker, distance=0..5] at @s run function pack:main/spells/function/lumos/replace_old_block

execute at @s run playsound entity.breeze.deflect master @a[distance=0..15] ~ ~ ~ 2

tellraw @s [{text:"Lumos ", color:"#ffed87", bold:false, italic:false}, {text:"deactivated | ", color:white, bold:false, italic:false}, {text:"Cooldown:", color:white, bold:false, italic:false}, {text:" 5s", color:green, bold:false, italic:false}]


particle dust{color:[1.0,0.93,0.46],scale:1} ~ ~1 ~ 1.254 1.254 1.254 1 50 force @a

title @s[scores={SpellWheelStatus=0}] actionbar [{"text":"Lumos ", color:"#ffed87", bold:false, italic:false}, {text:"Deactivated", color: "white", bold:false, italic:false}]
