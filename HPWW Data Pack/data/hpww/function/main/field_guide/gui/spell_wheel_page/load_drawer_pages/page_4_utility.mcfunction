
#set indicator highlight
    function hpww:main/spells/function/api/uuid_selector/api/as_at_linked_entities {entities:"@e[type=item_display, tag=aj.fg_spell_wheel.bone.utility, limit=1, sort=nearest, distance=0..5]", function:"aj:fg_spell_wheel/variants/drawer_indicator_utility/apply"}

#off right/left
    function hpww:main/spells/function/api/uuid_selector/api/as_at_linked_entities {entities:"@e[type=item_display, tag=aj.fg_spell_wheel.bone.force, limit=1, sort=nearest, distance=0..5]", function:"aj:fg_spell_wheel/variants/drawer_indicator_force_off/apply"}
    function hpww:main/spells/function/api/uuid_selector/api/as_at_linked_entities {entities:"@e[type=item_display, tag=aj.fg_spell_wheel.bone.curses, limit=1, sort=nearest, distance=0..5]", function:"aj:fg_spell_wheel/variants/drawer_indicator_curses_off/apply"}


#Slot 1
    #set names of slot
    execute as @e[tag=aj.fg_spell_wheel.interaction.drawer_slot_1_interaction, distance=0..5, limit=1, sort=nearest, type=interaction] run data modify entity @s CustomName set value "Lumos"
    #if slot_1 (Lumos) is unlocked then run this
    execute if entity @s[advancements={hpww:spells/unlocked/lumos_unlocked=true}] run return run function hpww:main/spells/function/api/uuid_selector/api/as_at_linked_entities {entities:"@e[type=item_display, tag=aj.fg_spell_wheel.bone.d_slot_1, limit=1, sort=nearest, distance=0..5]", function:"aj:fg_spell_wheel/variants/drawer_utility_slot_1/apply"}

    #otherwise run this
    function hpww:main/spells/function/api/uuid_selector/api/as_at_linked_entities {entities:"@e[type=item_display, tag=aj.fg_spell_wheel.bone.d_slot_1, limit=1, sort=nearest, distance=0..5]", function:"aj:fg_spell_wheel/variants/drawer_utility_slot_1_locked/apply"}
    #set names of slot
    execute as @e[tag=aj.fg_spell_wheel.interaction.drawer_slot_1_interaction, distance=0..5, limit=1, sort=nearest, type=interaction] run data modify entity @s CustomName set value "Lumos (Locked)"
#Slot 2 