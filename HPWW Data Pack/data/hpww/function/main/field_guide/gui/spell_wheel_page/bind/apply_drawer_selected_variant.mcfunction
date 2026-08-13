

$scoreboard players set @s hpww.drawer_selected_slot $(slot)

#applys the varient, and inside blockbench when a varient is applied it runs a function.
$execute if score @s hpww.fg.spell_wheel_page.drawer_page matches 1 run function hpww:main/spells/function/api/uuid_selector/api/as_at_linked_entities {entities:"@e[type=item_display, tag=aj.fg_spell_wheel.bone.d_slot_1, limit=1, sort=nearest, distance=0..5]", function:"aj:fg_spell_wheel/variants/drawer_damage_slot_$(slot)_selected/apply"}
