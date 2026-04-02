

scoreboard players set @s HasPreset 1

$item replace entity @s hotbar.0 with test_instance_block[item_model="wands:$(wand_wood)_wand", item_name=" ", consumable={consume_seconds:1000000000, animation:none}, enchantments={"pack:page_left_click":1, "pack:page_left_click":1}, piercing_weapon={}, tooltip_display={hidden_components:["enchantments"]}, enchantment_glint_override=0b, lore=[{text:"Page 1", bold:true, italic:false}, {text:"Spell 1:", color:"gray", bold:false, italic:false}, {text:"Spell 2:", color:"gray", bold:false, italic:false}, {text:"Spell 3:", color:"gray", bold:false, italic:false}, {text:"Spell 4:", color:"gray", bold:false, italic:false}], custom_data={cannot_be_dropped:1b, type:"spell_wheel_page"}]

$item replace entity @s hotbar.1 with test_instance_block[item_model="wands:$(wand_wood)_wand", item_name=" ", consumable={consume_seconds:1000000000, animation:none}, enchantments={"pack:page_left_click":1, "pack:page_left_click":1}, piercing_weapon={}, tooltip_display={hidden_components:["enchantments"]}, enchantment_glint_override=0b, lore=[{text:"Page 2", bold:true, italic:false}, {text:"Spell 1:", color:"gray", bold:false, italic:false}, {text:"Spell 2:", color:"gray", bold:false, italic:false}, {text:"Spell 3:", color:"gray", bold:false, italic:false}, {text:"Spell 4:", color:"gray", bold:false, italic:false}], custom_data={cannot_be_dropped:1b, type:"spell_wheel_page"}]

$item replace entity @s hotbar.2 with test_instance_block[item_model="wands:$(wand_wood)_wand", item_name=" ", consumable={consume_seconds:1000000000, animation:none}, enchantments={"pack:page_left_click":1, "pack:page_left_click":1}, piercing_weapon={}, tooltip_display={hidden_components:["enchantments"]}, enchantment_glint_override=0b, lore=[{text:"Page 3", bold:true, italic:false}, {text:"Spell 1:", color:"gray", bold:false, italic:false}, {text:"Spell 2:", color:"gray", bold:false, italic:false}, {text:"Spell 3:", color:"gray", bold:false, italic:false}, {text:"Spell 4:", color:"gray", bold:false, italic:false}], custom_data={cannot_be_dropped:1b, type:"spell_wheel_page"}]

$item replace entity @s hotbar.3 with test_instance_block[item_model="wands:$(wand_wood)_wand", item_name=" ", consumable={consume_seconds:1000000000, animation:none}, enchantments={"pack:page_left_click":1, "pack:page_left_click":1}, piercing_weapon={}, tooltip_display={hidden_components:["enchantments"]}, enchantment_glint_override=0b, lore=[{text:"Page 4", bold:true, italic:false}, {text:"Spell 1:", color:"gray", bold:false, italic:false}, {text:"Spell 2:", color:"gray", bold:false, italic:false}, {text:"Spell 3:", color:"gray", bold:false, italic:false}, {text:"Spell 4:", color:"gray", bold:false, italic:false}], custom_data={cannot_be_dropped:1b, type:"spell_wheel_page"}]

$item replace entity @s hotbar.4 with test_instance_block[item_model="wands:$(wand_wood)_wand", item_name=" ", consumable={consume_seconds:1000000000, animation:none}, enchantments={"pack:page_left_click":1, "pack:page_left_click":1}, piercing_weapon={}, tooltip_display={hidden_components:["enchantments"]}, enchantment_glint_override=0b, lore=[{text:"Page 5", bold:true, italic:false}, {text:"Spell 1:", color:"gray", bold:false, italic:false}, {text:"Spell 2:", color:"gray", bold:false, italic:false}, {text:"Spell 3:", color:"gray", bold:false, italic:false}, {text:"Spell 4:", color:"gray", bold:false, italic:false}], custom_data={cannot_be_dropped:1b, type:"spell_wheel_page"}]

$item replace entity @s hotbar.5 with test_instance_block[item_model="wands:$(wand_wood)_wand", item_name=" ", consumable={consume_seconds:1000000000, animation:none}, enchantments={"pack:page_left_click":1, "pack:page_left_click":1}, piercing_weapon={}, tooltip_display={hidden_components:["enchantments"]}, enchantment_glint_override=0b, lore=[{text:"Page 6", bold:true, italic:false}, {text:"Spell 1:", color:"gray", bold:false, italic:false}, {text:"Spell 2:", color:"gray", bold:false, italic:false}, {text:"Spell 3:", color:"gray", bold:false, italic:false}, {text:"Spell 4:", color:"gray", bold:false, italic:false}], custom_data={cannot_be_dropped:1b, type:"spell_wheel_page"}]

$item replace entity @s hotbar.6 with test_instance_block[item_model="wands:$(wand_wood)_wand", item_name=" ", consumable={consume_seconds:1000000000, animation:none}, enchantments={"pack:page_left_click":1, "pack:page_left_click":1}, piercing_weapon={}, tooltip_display={hidden_components:["enchantments"]}, enchantment_glint_override=0b, lore=[{text:"Page 7", bold:true, italic:false}, {text:"Spell 1:", color:"gray", bold:false, italic:false}, {text:"Spell 2:", color:"gray", bold:false, italic:false}, {text:"Spell 3:", color:"gray", bold:false, italic:false}, {text:"Spell 4:", color:"gray", bold:false, italic:false}], custom_data={cannot_be_dropped:1b, type:"spell_wheel_page"}]




#Buttons (Settings & Exit)
item replace entity @s hotbar.7 with test_instance_block[item_model="pack:settings_button", consumable={consume_seconds:1000000000, animation:"none", has_consume_particles:false}, custom_data={cannot_be_dropped:1b, ui:1b},custom_name=""]

item replace entity @s hotbar.8 with test_instance_block[item_model="pack:exit_wheel_button",consumable={consume_seconds:1000000000, animation:"none", has_consume_particles:false}, custom_data={cannot_be_dropped:1b}, custom_name=""]

function pack:main/spellwheel/wheel/function/save_preset

data remove storage pdb:main in
data remove storage pdb:main out
function pdb:get_me
data modify storage pdb:main in set from storage pdb:main out


data modify storage pdb:main in.spell_wheel_data.spells.page_1.slot_1 set from storage pack:gobal_spell_data blank
data modify storage pdb:main in.spell_wheel_data.spells.page_1.slot_2 set from storage pack:gobal_spell_data blank
data modify storage pdb:main in.spell_wheel_data.spells.page_1.slot_3 set from storage pack:gobal_spell_data blank
data modify storage pdb:main in.spell_wheel_data.spells.page_1.slot_4 set from storage pack:gobal_spell_data blank

data modify storage pdb:main in.spell_wheel_data.spells.page_2.slot_1 set from storage pack:gobal_spell_data blank
data modify storage pdb:main in.spell_wheel_data.spells.page_2.slot_2 set from storage pack:gobal_spell_data blank
data modify storage pdb:main in.spell_wheel_data.spells.page_2.slot_3 set from storage pack:gobal_spell_data blank
data modify storage pdb:main in.spell_wheel_data.spells.page_2.slot_4 set from storage pack:gobal_spell_data blank

data modify storage pdb:main in.spell_wheel_data.spells.page_3.slot_1 set from storage pack:gobal_spell_data blank
data modify storage pdb:main in.spell_wheel_data.spells.page_3.slot_2 set from storage pack:gobal_spell_data blank
data modify storage pdb:main in.spell_wheel_data.spells.page_3.slot_3 set from storage pack:gobal_spell_data blank
data modify storage pdb:main in.spell_wheel_data.spells.page_3.slot_4 set from storage pack:gobal_spell_data blank

data modify storage pdb:main in.spell_wheel_data.spells.page_4.slot_1 set from storage pack:gobal_spell_data blank
data modify storage pdb:main in.spell_wheel_data.spells.page_4.slot_2 set from storage pack:gobal_spell_data blank
data modify storage pdb:main in.spell_wheel_data.spells.page_4.slot_3 set from storage pack:gobal_spell_data blank
data modify storage pdb:main in.spell_wheel_data.spells.page_4.slot_4 set from storage pack:gobal_spell_data blank

data modify storage pdb:main in.spell_wheel_data.spells.page_5.slot_1 set from storage pack:gobal_spell_data blank
data modify storage pdb:main in.spell_wheel_data.spells.page_5.slot_2 set from storage pack:gobal_spell_data blank
data modify storage pdb:main in.spell_wheel_data.spells.page_5.slot_3 set from storage pack:gobal_spell_data blank
data modify storage pdb:main in.spell_wheel_data.spells.page_5.slot_4 set from storage pack:gobal_spell_data blank

data modify storage pdb:main in.spell_wheel_data.spells.page_6.slot_1 set from storage pack:gobal_spell_data blank
data modify storage pdb:main in.spell_wheel_data.spells.page_6.slot_2 set from storage pack:gobal_spell_data blank
data modify storage pdb:main in.spell_wheel_data.spells.page_6.slot_3 set from storage pack:gobal_spell_data blank
data modify storage pdb:main in.spell_wheel_data.spells.page_6.slot_4 set from storage pack:gobal_spell_data blank

data modify storage pdb:main in.spell_wheel_data.spells.page_7.slot_1 set from storage pack:gobal_spell_data blank
data modify storage pdb:main in.spell_wheel_data.spells.page_7.slot_2 set from storage pack:gobal_spell_data blank
data modify storage pdb:main in.spell_wheel_data.spells.page_7.slot_3 set from storage pack:gobal_spell_data blank
data modify storage pdb:main in.spell_wheel_data.spells.page_7.slot_4 set from storage pack:gobal_spell_data blank

function pdb:save_me
function pack:main/spellwheel/wheel/function/cache/queue_refresh
function pack:main/spellwheel/wheel/function/cache/refresh_if_dirty
