data remove storage pdb:main out
function pdb:get_me_cached

data remove storage hpww:fg_spell_wheel_runtime draw
$data modify storage hpww:fg_spell_wheel_runtime draw set from storage pdb:main out.spell_wheel_cache.page_$(page).draw
$data modify storage hpww:fg_spell_wheel_runtime draw.slot_1_spell set from storage pdb:main out.spell_wheel_cache.page_$(page).draw_data.slot_1
$data modify storage hpww:fg_spell_wheel_runtime draw.slot_2_spell set from storage pdb:main out.spell_wheel_cache.page_$(page).draw_data.slot_2
$data modify storage hpww:fg_spell_wheel_runtime draw.slot_3_spell set from storage pdb:main out.spell_wheel_cache.page_$(page).draw_data.slot_3
$data modify storage hpww:fg_spell_wheel_runtime draw.slot_4_spell set from storage pdb:main out.spell_wheel_cache.page_$(page).draw_data.slot_4
function hpww:main/field_guide/gui/spell_wheel_page/load_wheel_pages/apply_slots with storage hpww:fg_spell_wheel_runtime draw
