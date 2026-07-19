
#kill resources
execute as @e[type=armor_stand, tag=wand_crafting_table_detector, scores={acacia_log=1,phoenix_feather=1}] run kill @e[type=item, distance=..0.5, limit=1, nbt={Item:{id:"minecraft:stripped_acacia_wood"}}]
execute as @e[type=armor_stand, tag=wand_crafting_table_detector, scores={acacia_log=1,phoenix_feather=1}] run kill @e[type=item, distance=..0.5, limit=1, nbt={Item:{id:"minecraft:command_block"}}]

summon item ~ ~0.3 ~ {Item:{id:structure_block, components:{ custom_data:{wand:1b, wand_wood:"acacia", wand_core:"phoenix_feather"}, enchantment_glint_override:0b,"swing_animation":{type:'stab',duration:20}, use_effects:{can_sprint:true, speed_multiplier:1}, consumable:{animation:"none", consume_seconds:1000000000}, enchantments:{"hpww:page_left_click":1}, piercing_weapon:{}, tooltip_display:{hidden_components:["enchantments"]}, rarity:rare, item_model:"wands:acacia_wand", custom_name:{text:"Acacia Wand", color:white, bold:false, italic:false}, lore:[[{text:"Wood Type: ", color:"gray", bold:false, italic:false}, {text:"Acacia", italic:false, bold:false, color: "#d37745"}], [{text:"Wand Core: ", color:gray, bold:false, italic:false}, {text:"Phoenix Feather", color:"#fb731f", italic:false, bold:false}],[{text:"\uEA1A", font:"hpww:custom_glyphs", shadow_color:0, color:white,bold:false,italic:false}]]}}, Glowing:true, PickupDelay:40, CustomNameVisible:false, CustomName:{text:"Acacia Wand", color:white, bold:false, italic:false}, }

function hpww:main/wand_crafting/detect/function/crafting_vfx

