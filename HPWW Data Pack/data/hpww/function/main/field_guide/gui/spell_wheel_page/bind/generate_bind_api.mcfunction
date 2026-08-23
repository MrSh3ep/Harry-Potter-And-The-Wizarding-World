playsound ui.button.click master @s ~ ~ ~ 0.2



# Called as the player; $(slot) comes from the Blockbench callback.
data remove storage pdb:main in
data remove storage pdb:main out
function pdb:get_me_cached

# Assemble every bind API macro argument in one compound.
data remove storage hpww:bind_spell_api args
data modify storage hpww:bind_spell_api args.spell_name set from storage pdb:main out.bind_spell.SpellData
$data modify storage hpww:bind_spell_api args.slot set value $(slot)
execute store result storage hpww:bind_spell_api args.page int 1 run scoreboard players get @s hpww.fg.spell_wheel_page.wheel_page

# Do nothing until a drawer spell has been selected.
execute unless data storage hpww:bind_spell_api args.spell_name run return fail

return run function hpww:main/field_guide/gui/spell_wheel_page/bind/bind_if_selected_spell_unlocked with storage hpww:bind_spell_api args
