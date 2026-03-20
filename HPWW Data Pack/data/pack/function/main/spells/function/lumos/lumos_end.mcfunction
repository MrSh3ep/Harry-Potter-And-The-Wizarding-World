execute at @s run playsound entity.breeze.deflect master @a[distance=0..15] ~ ~ ~ 2
tellraw @s [{text:"Lumos ", color:"#ffed87", bold:false, italic:false}, {text:"deactivated | ", color:white, bold:false, italic:false}, {text:"Cooldown:", color:white, bold:false, italic:false}, {text:" 5s", color:green, bold:false, italic:false}]

scoreboard players set @s lumos_activated 0
scoreboard players set @s lumos_cooldown 100
particle dust{color:[1.0,0.93,0.46],scale:1} ~ ~1 ~ 1.254 1.254 1.254 1 50 force @a
fill ~10 ~8 ~10 ~-10 ~-2 ~-10 air replace light[level=15]
execute at @s run playsound entity.breeze.deflect master @a[distance=0..15] ~ ~ ~ 2

title @s[scores={SpellWheelStatus=0}] actionbar [{"text":"Lumos ", color:"#ffed87", bold:false, italic:false}, {text:"Deactivated", color: "white", bold:false, italic:false}]

function pack:main/spells/store_player_spell_slot_data/lumos/update_deactive
 
