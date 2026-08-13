function hpww:main/field_guide/gui/spell_wheel_page/load_wheel_pages/load_page {page:1}

#set indicator highlight
    function hpww:main/spells/function/api/uuid_selector/api/as_at_linked_entities {entities:"@e[type=item_display, tag=aj.fg_spell_wheel.bone.p_1, limit=1, sort=nearest, distance=0..5]", function:"aj:fg_spell_wheel/variants/wheel_page_indicator_1/apply"}

#off right/left
    function hpww:main/spells/function/api/uuid_selector/api/as_at_linked_entities {entities:"@e[type=item_display, tag=aj.fg_spell_wheel.bone.p_2, limit=1, sort=nearest, distance=0..5]", function:"aj:fg_spell_wheel/variants/wheel_page_indicator_2_off/apply"}
