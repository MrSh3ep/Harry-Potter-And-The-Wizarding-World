#if an interaction is being looked at, then make the item display glow

function hpww:main/spells/function/api/uuid_selector/api/check_uuid {entity:"@e[type=interaction,tag=aj.field_guide_gui.interaction.quests_interaction,limit=1,sort=nearest, distance=0..5, scores={hpww.interaction.is_being_looked_at=2}]"}
execute unless score @s hpww.api.UUID_Selector matches 1 run return fail
function hpww:main/spells/function/api/uuid_selector/api/as_at_linked_entities {entities:"@e[type=item_display, tag=aj.field_guide_gui.node.quests,limit=1, sort=nearest, distance=0..5]", function:"aj:field_guide_gui/variants/quests_highlight/apply"}
