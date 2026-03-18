data remove storage pdb:main out

function pdb:get_me
data modify storage pdb:main in set from storage pdb:main out


$data modify storage pdb:main in.spell_wheel_data.spells.page_$(page).slot_$(slot).Current_Key set from storage pack:gobal_spell_data lumos.Keys.Deactive.$(Key)

function pdb:save_me