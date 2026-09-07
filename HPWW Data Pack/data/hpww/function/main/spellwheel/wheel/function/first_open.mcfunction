dialog show @s hpww:spell_wheel_tutorial

scoreboard players set @s HasPreset 1

$item replace entity @s hotbar.0 with test_instance_block[item_model="wands:$(wand_wood)_wand", item_name=" ", use_effects={can_sprint:true, speed_multiplier:1}, consumable={consume_seconds:1000000000, animation:none}, enchantments={"hpww:page_left_click":1, "hpww:page_left_click":1}, piercing_weapon={}, tooltip_display={hidden_components:["enchantments"]}, enchantment_glint_override=0b, lore=$(lore), custom_data={cannot_be_dropped:1b, type:"spell_wheel_page", wand_core:$(wand_core), page:0b}]

$item replace entity @s hotbar.1 with test_instance_block[item_model="wands:$(wand_wood)_wand", item_name=" ", use_effects={can_sprint:true, speed_multiplier:1}, consumable={consume_seconds:1000000000, animation:none}, enchantments={"hpww:page_left_click":1, "hpww:page_left_click":1}, piercing_weapon={}, tooltip_display={hidden_components:["enchantments"]}, enchantment_glint_override=0b, lore=$(lore), custom_data={cannot_be_dropped:1b, type:"spell_wheel_page", wand_core:$(wand_core), page:1b}]

$item replace entity @s hotbar.2 with test_instance_block[item_model="wands:$(wand_wood)_wand", item_name=" ", use_effects={can_sprint:true, speed_multiplier:1}, consumable={consume_seconds:1000000000, animation:none}, enchantments={"hpww:page_left_click":1, "hpww:page_left_click":1}, piercing_weapon={}, tooltip_display={hidden_components:["enchantments"]}, enchantment_glint_override=0b, lore=$(lore), custom_data={cannot_be_dropped:1b, type:"spell_wheel_page", wand_core:$(wand_core), page:2b}]

$item replace entity @s hotbar.3 with test_instance_block[item_model="wands:$(wand_wood)_wand", item_name=" ", use_effects={can_sprint:true, speed_multiplier:1}, consumable={consume_seconds:1000000000, animation:none}, enchantments={"hpww:page_left_click":1, "hpww:page_left_click":1}, piercing_weapon={}, tooltip_display={hidden_components:["enchantments"]}, enchantment_glint_override=0b, lore=$(lore), custom_data={cannot_be_dropped:1b, type:"spell_wheel_page", wand_core:$(wand_core), page:3b}]

$item replace entity @s hotbar.4 with test_instance_block[item_model="wands:$(wand_wood)_wand", item_name=" ", use_effects={can_sprint:true, speed_multiplier:1}, consumable={consume_seconds:1000000000, animation:none}, enchantments={"hpww:page_left_click":1, "hpww:page_left_click":1}, piercing_weapon={}, tooltip_display={hidden_components:["enchantments"]}, enchantment_glint_override=0b, lore=$(lore), custom_data={cannot_be_dropped:1b, type:"spell_wheel_page", wand_core:$(wand_core), page:4b}]

$item replace entity @s hotbar.5 with test_instance_block[item_model="wands:$(wand_wood)_wand", item_name=" ", use_effects={can_sprint:true, speed_multiplier:1}, consumable={consume_seconds:1000000000, animation:none}, enchantments={"hpww:page_left_click":1, "hpww:page_left_click":1}, piercing_weapon={}, tooltip_display={hidden_components:["enchantments"]}, enchantment_glint_override=0b, lore=$(lore), custom_data={cannot_be_dropped:1b, type:"spell_wheel_page", wand_core:$(wand_core), page:5b}]

$item replace entity @s hotbar.6 with test_instance_block[item_model="wands:$(wand_wood)_wand", item_name=" ", use_effects={can_sprint:true, speed_multiplier:1}, consumable={consume_seconds:1000000000, animation:none}, enchantments={"hpww:page_left_click":1, "hpww:page_left_click":1}, piercing_weapon={}, tooltip_display={hidden_components:["enchantments"]}, enchantment_glint_override=0b, lore=$(lore), custom_data={cannot_be_dropped:1b, type:"spell_wheel_page", wand_core:$(wand_core), page:6b}]




#Buttons (Settings & Exit)
item replace entity @s hotbar.7 with test_instance_block[item_model="hpww_items:field_guide", use_effects={can_sprint:true, speed_multiplier:1}, consumable={consume_seconds:1000000000, animation:"none", has_consume_particles:false}, custom_data={cannot_be_dropped:1b, ui:1b},custom_name=""]

item replace entity @s hotbar.8 with test_instance_block[item_model="hpww:exit_wheel_button",use_effects={can_sprint:true, speed_multiplier:1}, consumable={consume_seconds:1000000000, animation:"none", has_consume_particles:false}, custom_data={cannot_be_dropped:1b}, custom_name=""]

function hpww:main/spellwheel/wheel/function/save_preset

data remove storage pdb:main in
data remove storage pdb:main out
function pdb:get_me_cached
data modify storage pdb:main in set from storage pdb:main out


data modify storage pdb:main in.spell_wheel_data.spells.page_1.slot_1 set from storage hpww:gobal_spell_data blank
data modify storage pdb:main in.spell_wheel_data.spells.page_1.slot_2 set from storage hpww:gobal_spell_data blank
data modify storage pdb:main in.spell_wheel_data.spells.page_1.slot_3 set from storage hpww:gobal_spell_data blank
data modify storage pdb:main in.spell_wheel_data.spells.page_1.slot_4 set from storage hpww:gobal_spell_data blank

data modify storage pdb:main in.spell_wheel_data.spells.page_2.slot_1 set from storage hpww:gobal_spell_data blank
data modify storage pdb:main in.spell_wheel_data.spells.page_2.slot_2 set from storage hpww:gobal_spell_data blank
data modify storage pdb:main in.spell_wheel_data.spells.page_2.slot_3 set from storage hpww:gobal_spell_data blank
data modify storage pdb:main in.spell_wheel_data.spells.page_2.slot_4 set from storage hpww:gobal_spell_data blank

data modify storage pdb:main in.spell_wheel_data.spells.page_3.slot_1 set from storage hpww:gobal_spell_data blank
data modify storage pdb:main in.spell_wheel_data.spells.page_3.slot_2 set from storage hpww:gobal_spell_data blank
data modify storage pdb:main in.spell_wheel_data.spells.page_3.slot_3 set from storage hpww:gobal_spell_data blank
data modify storage pdb:main in.spell_wheel_data.spells.page_3.slot_4 set from storage hpww:gobal_spell_data blank

data modify storage pdb:main in.spell_wheel_data.spells.page_4.slot_1 set from storage hpww:gobal_spell_data blank
data modify storage pdb:main in.spell_wheel_data.spells.page_4.slot_2 set from storage hpww:gobal_spell_data blank
data modify storage pdb:main in.spell_wheel_data.spells.page_4.slot_3 set from storage hpww:gobal_spell_data blank
data modify storage pdb:main in.spell_wheel_data.spells.page_4.slot_4 set from storage hpww:gobal_spell_data blank

data modify storage pdb:main in.spell_wheel_data.spells.page_5.slot_1 set from storage hpww:gobal_spell_data blank
data modify storage pdb:main in.spell_wheel_data.spells.page_5.slot_2 set from storage hpww:gobal_spell_data blank
data modify storage pdb:main in.spell_wheel_data.spells.page_5.slot_3 set from storage hpww:gobal_spell_data blank
data modify storage pdb:main in.spell_wheel_data.spells.page_5.slot_4 set from storage hpww:gobal_spell_data blank

data modify storage pdb:main in.spell_wheel_data.spells.page_6.slot_1 set from storage hpww:gobal_spell_data blank
data modify storage pdb:main in.spell_wheel_data.spells.page_6.slot_2 set from storage hpww:gobal_spell_data blank
data modify storage pdb:main in.spell_wheel_data.spells.page_6.slot_3 set from storage hpww:gobal_spell_data blank
data modify storage pdb:main in.spell_wheel_data.spells.page_6.slot_4 set from storage hpww:gobal_spell_data blank

data modify storage pdb:main in.spell_wheel_data.spells.page_7.slot_1 set from storage hpww:gobal_spell_data blank
data modify storage pdb:main in.spell_wheel_data.spells.page_7.slot_2 set from storage hpww:gobal_spell_data blank
data modify storage pdb:main in.spell_wheel_data.spells.page_7.slot_3 set from storage hpww:gobal_spell_data blank
data modify storage pdb:main in.spell_wheel_data.spells.page_7.slot_4 set from storage hpww:gobal_spell_data blank

function pdb:save_me
function hpww:main/spellwheel/wheel/function/cache/queue_refresh
function hpww:main/spellwheel/wheel/function/cache/refresh_if_dirty
