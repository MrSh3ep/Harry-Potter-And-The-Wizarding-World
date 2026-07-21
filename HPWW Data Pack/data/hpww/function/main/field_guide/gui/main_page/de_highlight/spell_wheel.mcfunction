function hpww:main/spells/function/api/uuid_selector/api/check_uuid {entity:"@e[type=interaction,tag=aj.field_guide_gui.interaction.spell_wheel_interaction,limit=1,sort=nearest, distance=0..5, scores={hpww.interaction.is_being_looked_at=1}]"}
execute unless score @s hpww.api.UUID_Selector matches 1 run return fail

function hpww:main/spells/function/api/uuid_selector/api/as_at_linked_entities {entities:"@e[type=item_display,tag=aj.field_guide_gui.node.spell_wheel,limit=1,sort=nearest, distance=0..5]", function:"aj:field_guide_gui/variants/spell_wheel_normal/apply"}

