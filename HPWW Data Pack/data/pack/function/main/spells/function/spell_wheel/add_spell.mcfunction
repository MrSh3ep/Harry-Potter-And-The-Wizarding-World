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

tag @s add settings_cooldown
execute as @s run schedule function pack:main/spellwheel/wheel/function/settings_menu/settings_cooldown 3s