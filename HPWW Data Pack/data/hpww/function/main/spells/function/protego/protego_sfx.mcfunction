function hpww:main/spells/function/api/spell_cooldown/read_cooldown {spell:"protego"}
tellraw @s [{text:"Protego is on cooldown for ", bold:false, color:white}, {score:{name:"@s", objective:"cooldown_api"}, color:green}, {text:" seconds!", bold:false, color:white}]

playsound block.vault.insert_item_fail master @s ~ ~ ~ 1
