data remove storage pdb:main in
data remove storage pdb:main out

function pdb:get_me
data modify storage pdb:main in set from storage pdb:main out

$execute if data storage pdb:main in.spell_wheel_data.spells.page_$(page).slot_1{Spell:"lumos"} run data modify storage pdb:main in.spell_wheel_data.spells.page_$(page).slot_1.Current_Key set from storage pack:gobal_spell_data lumos.Keys.Deactive.D_5

$execute if data storage pdb:main in.spell_wheel_data.spells.page_$(page).slot_2{Spell:"lumos"} run data modify storage pdb:main in.spell_wheel_data.spells.page_$(page).slot_2.Current_Key set from storage pack:gobal_spell_data lumos.Keys.Deactive.D_5

$execute if data storage pdb:main in.spell_wheel_data.spells.page_$(page).slot_3{Spell:"lumos"} run data modify storage pdb:main in.spell_wheel_data.spells.page_$(page).slot_3.Current_Key set from storage pack:gobal_spell_data lumos.Keys.Deactive.D_5

$execute if data storage pdb:main in.spell_wheel_data.spells.page_$(page).slot_4{Spell:"lumos"} run data modify storage pdb:main in.spell_wheel_data.spells.page_$(page).slot_4.Current_Key set from storage pack:gobal_spell_data lumos.Keys.Deactive.D_5




function pdb:save_me