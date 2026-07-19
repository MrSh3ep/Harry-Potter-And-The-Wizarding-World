
#kill resources
execute as @e[type=armor_stand, tag=wand_crafting_table_detector, scores={oak_log=1, dragon_heartstring=1}] run kill @e[type=item, distance=..0.5, limit=1, nbt={Item:{id:"minecraft:stripped_oak_wood"}}]
execute as @e[type=armor_stand, tag=wand_crafting_table_detector, scores={oak_log=1, dragon_heartstring=1}] run kill @e[type=item, distance=..0.5, limit=1, nbt={Item:{id:"minecraft:repeating_command_block"}}]

#summon wand
summon item ~ ~0.3 ~ {Item:{id:structure_block, components:{ custom_data:{wand:1b, wand_wood:"oak", wand_core:"dragon_heartstring"},enchantment_glint_override:0b, "swing_animation":{type:'stab',duration:20}, use_effects:{can_sprint:true, speed_multiplier:1}, consumable:{animation:"none", consume_seconds:1000000000}, enchantments:{"hpww:page_left_click":1}, piercing_weapon:{}, tooltip_display:{hidden_components:["enchantments"]},rarity:rare, item_model:"wands:oak_wand", custom_name:{text:"Oak Wand", color:white, bold:false, italic:false}, lore:[[{text:"Wood Type: ", color:"gray", bold:false, italic:false}, {text:"Oak", italic:false, bold:false, color:"#ba9865"}], [{text:"Wand Core: ", color:gray, bold:false, italic:false}, {text:"Dragon Heartstring", color:"#942647", italic:false, bold:false}],[{text:"\uEA1A", font:"hpww:custom_glyphs", shadow_color:0, color:white,bold:false,italic:false}]]}}, Glowing:true, PickupDelay:40, CustomNameVisible:false, CustomName:{text:"Oak Wand", color:white, bold:false, italic:false}, }

function hpww:main/wand_crafting/detect/function/crafting_vfx