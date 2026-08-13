function hpww:main/field_guide/gui/spell_wheel_page/load_wheel_pages/load_page {page:4}

#set indicator highlight
    function hpww:main/spells/function/api/uuid_selector/api/as_at_linked_entities {entities:"@e[type=item_display, tag=aj.fg_spell_wheel.root, distance=0..5]", function:"aj:fg_spell_wheel/variants/wheel_page_indicator_4/apply"}

#off right/left
    function hpww:main/spells/function/api/uuid_selector/api/as_at_linked_entities {entities:"@e[type=item_display, tag=aj.fg_spell_wheel.root, distance=0..5]", function:"aj:fg_spell_wheel/variants/wheel_page_indicator_3_off/apply"}

    function hpww:main/spells/function/api/uuid_selector/api/as_at_linked_entities {entities:"@e[type=item_display, tag=aj.fg_spell_wheel.root, distance=0..5]", function:"aj:fg_spell_wheel/variants/wheel_page_indicator_5_off/apply"}
