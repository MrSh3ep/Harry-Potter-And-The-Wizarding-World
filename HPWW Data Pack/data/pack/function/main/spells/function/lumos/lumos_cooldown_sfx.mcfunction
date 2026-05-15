function pack:main/spells/function/api/read_cooldown {spell:"lumos"}
tellraw @s [{"text":"Lumos ", "color":"#9fd6ff"},{text:"is on cooldown for ", bold:false, color:white}, {score:{name:"@s", objective:"cooldown_api"}, color:green},{text:"s", color:green}]

playsound block.vault.insert_item_fail master @s ~ ~ ~ 1


