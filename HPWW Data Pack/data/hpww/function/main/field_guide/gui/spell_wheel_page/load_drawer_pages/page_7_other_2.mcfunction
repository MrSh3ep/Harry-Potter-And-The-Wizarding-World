
#set indicator highlight
    function hpww:main/spells/function/api/uuid_selector/api/as_at_linked_entities {entities:"@e[type=item_display, tag=aj.fg_spell_wheel.bone.other_1, limit=1, sort=nearest, distance=0..5]", function:"aj:fg_spell_wheel/variants/drawer_indicator_other_2/apply"}

#off right/left
    function hpww:main/spells/function/api/uuid_selector/api/as_at_linked_entities {entities:"@e[type=item_display, tag=aj.fg_spell_wheel.bone.utility, limit=1, sort=nearest, distance=0..5]", function:"aj:fg_spell_wheel/variants/drawer_indicator_other_1_off/apply"}
    function hpww:main/spells/function/api/uuid_selector/api/as_at_linked_entities {entities:"@e[type=item_display, tag=aj.fg_spell_wheel.bone.other_1, limit=1, sort=nearest, distance=0..5]", function:"aj:fg_spell_wheel/variants/drawer_indicator_other_3_off/apply"}


    #set names of slot
    execute as @e[tag=aj.fg_spell_wheel.interaction.drawer_slot_1_interaction, distance=0..5, limit=1, sort=nearest, type=interaction] run data modify entity @s CustomName set value ""
    #Slot 1
    function hpww:main/spells/function/api/uuid_selector/api/as_at_linked_entities {entities:"@e[type=item_display, tag=aj.fg_spell_wheel.bone.d_slot_1, limit=1, sort=nearest, distance=0..5]", function:"aj:fg_spell_wheel/variants/drawer_blank_slot_1/apply"}