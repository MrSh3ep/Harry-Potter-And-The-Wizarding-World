#ran from player not function
dialog clear @s

data remove storage pdb:main in
data remove storage pdb:main out
function pdb:get_me
data modify storage pdb:main in set from storage pdb:main out

# now add what u need since ur adding to in from ur data :P idk why it took so long to figure out how to do player storgae cause its not that har lmao :D

#anyways.... lol

$data remove storage pdb:main in.spell_wheel_data.spells.page_$(Page).slot_$(Slot)

$data modify storage pdb:main in.spell_wheel_data.spells.page_$(Page).slot_$(Slot) set from storage pack:gobal_spell_data $(Spell)

#for example, a global spell will have {Spell: "Lumos", Keys:{Active: 551, Deactive: 552}}

function pdb:save_me
function pack:main/spells/function/lumos/set_icons/start
function pack:main/spells/function/levioso/set_icons/start
function pack:main/spellwheel/wheel/function/cache/queue_refresh

execute as @s run advancement revoke @s only pack:blocks/main_wand/right_click_exit_wheel_button
