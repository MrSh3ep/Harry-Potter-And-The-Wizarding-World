#ran from player not function

data remove storage pdb:main in
data remove storage pdb:main out
function pdb:get_me
data modify storage pdb:main in set from storage pdb:main out

# now add what u need since ur adding to in from ur data :P idk why it took so long to figure out how to do player storgae cause its not that har lmao :D

#anyways.... lol

$data modify storage pdb:main in.spell_wheel_data.spells.$(Page).$(Slot) set from storage pack:gobal_spell_data blank

function pdb:save_me
function pack:main/spells/function/lumos/set_icons/start
function pack:main/spells/function/levioso/set_icons/start
function pack:main/spellwheel/wheel/function/cache/queue_refresh
