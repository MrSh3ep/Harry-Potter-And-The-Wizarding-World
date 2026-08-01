

#if slot_1 (Expelliarmus) is unlocked then run this
execute if entity @s[advancements={hpww:spells/unlocked/expelliarmus_unlocked=true}] run return run function hpww:main/spells/function/api/uuid_selector/api/as_at_linked_entities {entities:"@e[type=item_display, tag=aj.fg_spell_wheel.bone.d_slot_1, limit=1, sort=nearest, distance=0..5]", function:"aj:fg_spell_wheel/variants/drawer_damage_slot_1/apply"}

#otherwise run this
function hpww:main/spells/function/api/uuid_selector/api/as_at_linked_entities {entities:"@e[type=item_display, tag=aj.fg_spell_wheel.bone.d_slot_1, limit=1, sort=nearest, distance=0..5]", function:"aj:fg_spell_wheel/variants/drawer_damage_slot_1_locked/apply"}
