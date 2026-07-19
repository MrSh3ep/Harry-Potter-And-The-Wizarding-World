scoreboard players set @s lumos_activated 0
function hpww:main/spells/function/api/spell_cooldown/icons/set_selected {spell:"lumos",selected:false}
function hpww:main/spells/function/api/spell_cooldown/start_cooldown {spell:"lumos",time:10}
function hpww:main/spells/function/lumos/remove_owned_lights

execute at @s run playsound entity.breeze.deflect master @a[distance=0..15] ~ ~ ~ 2

tellraw @s [{text:"Lumos ", color:"#9fd6ff", bold:false, italic:false}, {text:"deactivated | ", color:white, bold:false, italic:false}, {text:"Cooldown:", color:white, bold:false, italic:false}, {text:" 5s", color:green, bold:false, italic:false}]


particle dust{color:[1.0,0.93,0.46],scale:1} ~ ~1 ~ 1.254 1.254 1.254 1 50 force @a

title @s[scores={SpellWheelStatus=0}] actionbar [{"text":"Lumos ", color:"#9fd6ff", bold:false, italic:false}, {text:"Deactivated", color: "white", bold:false, italic:false}]
