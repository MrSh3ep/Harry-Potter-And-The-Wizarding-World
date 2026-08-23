
#set indicator highlight
    function hpww:main/spells/function/api/uuid_selector/api/as_at_linked_entities {entities:"@e[type=item_display, tag=aj.fg_spell_wheel.bone.control, limit=1, sort=nearest, distance=0..5]", function:"aj:fg_spell_wheel/variants/drawer_indicator_control/apply"}

#off right/left
function hpww:main/spells/function/api/uuid_selector/api/as_at_linked_entities {entities:"@e[type=item_display, tag=aj.fg_spell_wheel.bone.damage, limit=1, sort=nearest, distance=0..5]", function:"aj:fg_spell_wheel/variants/drawer_indicator_damage_off/apply"}

function hpww:main/spells/function/api/uuid_selector/api/as_at_linked_entities {entities:"@e[type=item_display, tag=aj.fg_spell_wheel.bone.force, limit=1, sort=nearest, distance=0..5]", function:"aj:fg_spell_wheel/variants/drawer_indicator_force_off/apply"}

#Slot 1
    #set names of slot
    execute as @e[tag=aj.fg_spell_wheel.interaction.drawer_slot_1_interaction, distance=0..5, limit=1, sort=nearest, type=interaction] run data modify entity @s CustomName set value "Levioso"
    execute as @e[tag=aj.fg_spell_wheel.interaction.drawer_slot_1_interaction, distance=0..5, limit=1, sort=nearest, type=interaction] run function hpww:main/field_guide/gui/spell_wheel_page/bind/set_drawer_spell {spell_name:"levioso"}
    #if slot_1 (Levioso) is unlocked then run this
    execute if entity @s[advancements={hpww:spells/unlocked/levioso_unlocked=true}] run return run function hpww:main/spells/function/api/uuid_selector/api/as_at_linked_entities {entities:"@e[type=item_display, tag=aj.fg_spell_wheel.bone.d_slot_1, limit=1, sort=nearest, distance=0..5]", function:"aj:fg_spell_wheel/variants/drawer_control_slot_1/apply"}

    #otherwise run this
    function hpww:main/spells/function/api/uuid_selector/api/as_at_linked_entities {entities:"@e[type=item_display, tag=aj.fg_spell_wheel.bone.d_slot_1, limit=1, sort=nearest, distance=0..5]", function:"aj:fg_spell_wheel/variants/drawer_control_slot_1_locked/apply"}
    #set names of slot
    execute as @e[tag=aj.fg_spell_wheel.interaction.drawer_slot_1_interaction, distance=0..5, limit=1, sort=nearest, type=interaction] run data modify entity @s CustomName set value "Levioso (Locked)"
#Slot 2 
