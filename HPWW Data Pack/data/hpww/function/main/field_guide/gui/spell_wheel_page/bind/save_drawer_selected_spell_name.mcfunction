data remove storage pdb:main in
data remove storage pdb:main out
function pdb:get_me_cached
data modify storage pdb:main in set from storage pdb:main out

data remove storage pdb:main in.bind_spell.SpellData
$data modify storage pdb:main in.bind_spell.SpellData set value "$(spell_name)"

function pdb:save_me

