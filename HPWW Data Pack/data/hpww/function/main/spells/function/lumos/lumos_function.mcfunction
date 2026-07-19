execute as @s at @s if score @s lumos_activated matches 1 run return run function hpww:main/spells/function/lumos/lumos_cooldown

function hpww:main/spells/function/api/spell_cooldown/read_cooldown {spell:"lumos"}
execute if score @s cooldown_api matches 1.. run return run function hpww:main/spells/function/lumos/lumos_cooldown_sfx


tellraw @a[distance=0..25] [{"text":"<"},{"selector":"@s"},{text:">"},{text:" Lumos!", bold:false, italic:true, color:"#9fd6ff"}]

execute at @s run playsound entity.breeze.deflect master @a[distance=0..25] ~ ~ ~ 2
particle dust{color:[1.0,0.93,0.46],scale:1} ~ ~1 ~ 1.254 1.254 1.254 1 50 force @a


scoreboard players set @s lumos_activated 1
function hpww:main/spells/function/api/spell_cooldown/icons/set_selected {spell:"lumos",selected:true}
