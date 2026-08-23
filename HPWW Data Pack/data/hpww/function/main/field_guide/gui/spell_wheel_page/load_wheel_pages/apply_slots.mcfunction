$data modify storage hpww:fg_spell_wheel_runtime variant set value "wheel_$(slot_1_font)_slot_1"
function hpww:main/spells/function/api/uuid_selector/api/as_at_linked_entities {entities:"@e[type=item_display,tag=aj.fg_spell_wheel.bone.w_slot_1,distance=0..5]",function:"hpww:main/field_guide/gui/spell_wheel_page/load_wheel_pages/apply_variant"}
data remove storage hpww:fg_spell_wheel_runtime interaction_name
$data modify storage hpww:fg_spell_wheel_runtime interaction_name set from storage hpww:gobal_spell_data $(slot_1_spell).display_name
$execute unless data storage hpww:fg_spell_wheel_runtime interaction_name run data modify storage hpww:fg_spell_wheel_runtime interaction_name set value "$(slot_1_spell)"
function hpww:main/spells/function/api/uuid_selector/api/as_at_linked_entities {entities:"@e[type=interaction,tag=aj.fg_spell_wheel.interaction.wheel_slot_1_interaction,distance=0..5]",function:"hpww:main/field_guide/gui/spell_wheel_page/load_wheel_pages/set_interaction_name"}
$data modify storage hpww:fg_spell_wheel_runtime variant set value "wheel_$(slot_2_font)_slot_2"
function hpww:main/spells/function/api/uuid_selector/api/as_at_linked_entities {entities:"@e[type=item_display,tag=aj.fg_spell_wheel.bone.w_slot_2,distance=0..5]",function:"hpww:main/field_guide/gui/spell_wheel_page/load_wheel_pages/apply_variant"}
data remove storage hpww:fg_spell_wheel_runtime interaction_name
$data modify storage hpww:fg_spell_wheel_runtime interaction_name set from storage hpww:gobal_spell_data $(slot_2_spell).display_name
$execute unless data storage hpww:fg_spell_wheel_runtime interaction_name run data modify storage hpww:fg_spell_wheel_runtime interaction_name set value "$(slot_2_spell)"
function hpww:main/spells/function/api/uuid_selector/api/as_at_linked_entities {entities:"@e[type=interaction,tag=aj.fg_spell_wheel.interaction.wheel_slot_2_interaction,distance=0..5]",function:"hpww:main/field_guide/gui/spell_wheel_page/load_wheel_pages/set_interaction_name"}
$data modify storage hpww:fg_spell_wheel_runtime variant set value "wheel_$(slot_3_font)_slot_3"
function hpww:main/spells/function/api/uuid_selector/api/as_at_linked_entities {entities:"@e[type=item_display,tag=aj.fg_spell_wheel.bone.w_slot_3,distance=0..5]",function:"hpww:main/field_guide/gui/spell_wheel_page/load_wheel_pages/apply_variant"}
data remove storage hpww:fg_spell_wheel_runtime interaction_name
$data modify storage hpww:fg_spell_wheel_runtime interaction_name set from storage hpww:gobal_spell_data $(slot_3_spell).display_name
$execute unless data storage hpww:fg_spell_wheel_runtime interaction_name run data modify storage hpww:fg_spell_wheel_runtime interaction_name set value "$(slot_3_spell)"
function hpww:main/spells/function/api/uuid_selector/api/as_at_linked_entities {entities:"@e[type=interaction,tag=aj.fg_spell_wheel.interaction.wheel_slot_3_interaction,distance=0..5]",function:"hpww:main/field_guide/gui/spell_wheel_page/load_wheel_pages/set_interaction_name"}
$data modify storage hpww:fg_spell_wheel_runtime variant set value "wheel_$(slot_4_font)_slot_4"
function hpww:main/spells/function/api/uuid_selector/api/as_at_linked_entities {entities:"@e[type=item_display,tag=aj.fg_spell_wheel.bone.w_slot_4,distance=0..5]",function:"hpww:main/field_guide/gui/spell_wheel_page/load_wheel_pages/apply_variant"}
data remove storage hpww:fg_spell_wheel_runtime interaction_name
$data modify storage hpww:fg_spell_wheel_runtime interaction_name set from storage hpww:gobal_spell_data $(slot_4_spell).display_name
$execute unless data storage hpww:fg_spell_wheel_runtime interaction_name run data modify storage hpww:fg_spell_wheel_runtime interaction_name set value "$(slot_4_spell)"
function hpww:main/spells/function/api/uuid_selector/api/as_at_linked_entities {entities:"@e[type=interaction,tag=aj.fg_spell_wheel.interaction.wheel_slot_4_interaction,distance=0..5]",function:"hpww:main/field_guide/gui/spell_wheel_page/load_wheel_pages/set_interaction_name"}
