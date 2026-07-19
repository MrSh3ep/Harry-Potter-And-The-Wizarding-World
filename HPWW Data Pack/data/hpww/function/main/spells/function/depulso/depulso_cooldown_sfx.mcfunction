function hpww:main/spells/function/api/spell_cooldown/read_cooldown {spell:"depulso"}
tellraw @s [{"text":"Depulso ", "color":"#a187c8"},{text:"is on cooldown for ", bold:false, color:white}, {score:{name:"@s", objective:"cooldown_api"}, color:green}, {text:"s", color:green}]

playsound block.vault.insert_item_fail master @s ~ ~ ~ 1
