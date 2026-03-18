#ran from tick.mcfunction

execute if score @s lumos_activated matches 1 if score @s SpellWheelStatus matches 0 if items entity @s weapon structure_block run return run title @s actionbar [{text:"Activated Spell: ", color:white, bold:true, italic:false,},{"text":"Lumos ", color:"#ffed87", bold:false, italic:false}]