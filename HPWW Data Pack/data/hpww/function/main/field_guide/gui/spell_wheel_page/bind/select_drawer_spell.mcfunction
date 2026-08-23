# Called as the player at the clicked drawer-slot interaction.
data remove storage hpww:drawer_spell_selection args
$data modify storage hpww:drawer_spell_selection args.slot set value $(slot)
data modify storage hpww:drawer_spell_selection args.spell_name set from entity @e[type=interaction,tag=aj.fg_spell_wheel.interaction.drawer_slot_1_interaction,distance=0..0.1,limit=1,sort=nearest] data.hpww.drawer_spell

# Empty drawer slots do nothing.
execute unless data storage hpww:drawer_spell_selection args.spell_name run return fail
return run function hpww:main/field_guide/gui/spell_wheel_page/bind/select_drawer_spell_if_unlocked with storage hpww:drawer_spell_selection args
