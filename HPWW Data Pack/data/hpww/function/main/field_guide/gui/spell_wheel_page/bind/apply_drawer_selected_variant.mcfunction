
$scoreboard players set @s hpww.drawer_selected_slot $(slot)

#applys the varient, and inside blockbench when a varient is applied it runs a function.
$execute if score @s hpww.fg.spell_wheel_page.drawer_page matches 1 run return run function hpww:main/spells/function/api/uuid_selector/api/as_at_linked_entities {entities:"@e[type=item_display, tag=aj.fg_spell_wheel.bone.d_slot_1, limit=1, sort=nearest, distance=0..5]", function:"aj:fg_spell_wheel/variants/drawer_damage_slot_$(slot)_selected/apply"}

$execute if score @s hpww.fg.spell_wheel_page.drawer_page matches 2 run return run function hpww:main/spells/function/api/uuid_selector/api/as_at_linked_entities {entities:"@e[type=item_display, tag=aj.fg_spell_wheel.bone.d_slot_1, limit=1, sort=nearest, distance=0..5]", function:"aj:fg_spell_wheel/variants/drawer_control_slot_$(slot)_selected/apply"}

$execute if score @s hpww.fg.spell_wheel_page.drawer_page matches 3 run return run function hpww:main/spells/function/api/uuid_selector/api/as_at_linked_entities {entities:"@e[type=item_display, tag=aj.fg_spell_wheel.bone.d_slot_1, limit=1, sort=nearest, distance=0..5]", function:"aj:fg_spell_wheel/variants/drawer_force_slot_$(slot)_selected/apply"}

$execute if score @s hpww.fg.spell_wheel_page.drawer_page matches 4 run return run function hpww:main/spells/function/api/uuid_selector/api/as_at_linked_entities {entities:"@e[type=item_display, tag=aj.fg_spell_wheel.bone.d_slot_1, limit=1, sort=nearest, distance=0..5]", function:"aj:fg_spell_wheel/variants/drawer_utility_slot_$(slot)_selected/apply"}

$execute if score @s hpww.fg.spell_wheel_page.drawer_page matches 5 run return run function hpww:main/spells/function/api/uuid_selector/api/as_at_linked_entities {entities:"@e[type=item_display, tag=aj.fg_spell_wheel.bone.d_slot_1, limit=1, sort=nearest, distance=0..5]", function:"aj:fg_spell_wheel/variants/drawer_curses_slot_$(slot)_selected/apply"}

$execute if score @s hpww.fg.spell_wheel_page.drawer_page matches 6 run return run function hpww:main/spells/function/api/uuid_selector/api/as_at_linked_entities {entities:"@e[type=item_display, tag=aj.fg_spell_wheel.bone.d_slot_1, limit=1, sort=nearest, distance=0..5]", function:"aj:fg_spell_wheel/variants/drawer_other_1_slot_$(slot)_selected/apply"}

$execute if score @s hpww.fg.spell_wheel_page.drawer_page matches 7 run return run function hpww:main/spells/function/api/uuid_selector/api/as_at_linked_entities {entities:"@e[type=item_display, tag=aj.fg_spell_wheel.bone.d_slot_1, limit=1, sort=nearest, distance=0..5]", function:"aj:fg_spell_wheel/variants/drawer_other_2_slot_$(slot)_selected/apply"}

$execute if score @s hpww.fg.spell_wheel_page.drawer_page matches 8 run return run function hpww:main/spells/function/api/uuid_selector/api/as_at_linked_entities {entities:"@e[type=item_display, tag=aj.fg_spell_wheel.bone.d_slot_1, limit=1, sort=nearest, distance=0..5]", function:"aj:fg_spell_wheel/variants/drawer_other_3_slot_$(slot)_selected/apply"}

$execute if score @s hpww.fg.spell_wheel_page.drawer_page matches 9 run return run function hpww:main/spells/function/api/uuid_selector/api/as_at_linked_entities {entities:"@e[type=item_display, tag=aj.fg_spell_wheel.bone.d_slot_1, limit=1, sort=nearest, distance=0..5]", function:"aj:fg_spell_wheel/variants/drawer_other_4_slot_$(slot)_selected/apply"}

$execute if score @s hpww.fg.spell_wheel_page.drawer_page matches 10 run return run function hpww:main/spells/function/api/uuid_selector/api/as_at_linked_entities {entities:"@e[type=item_display, tag=aj.fg_spell_wheel.bone.d_slot_1, limit=1, sort=nearest, distance=0..5]", function:"aj:fg_spell_wheel/variants/drawer_other__5_slot_$(slot)_selected/apply"}

