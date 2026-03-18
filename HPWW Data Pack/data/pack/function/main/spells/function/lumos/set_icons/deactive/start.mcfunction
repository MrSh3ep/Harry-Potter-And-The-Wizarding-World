data remove storage pdb:main in
data remove storage pdb:main out
function pdb:get_me
data modify storage pdb:main in set from storage pdb:main out

data modify storage pdb:main in.spell_wheel.lumos_icon_data set from storage pdb:main out.SelectedPage_icon


execute if score @s lumos_cooldown matches 81..100 run data modify storage pdb:main in.spell_wheel.lumos_icon_data merge value {Key:"D_0"}

execute if score @s lumos_cooldown matches 61..80 run data modify storage pdb:main in.spell_wheel.lumos_icon_data merge value {Key:"D_1"}

execute if score @s lumos_cooldown matches 41..60 run data modify storage pdb:main in.spell_wheel.lumos_icon_data merge value {Key:"D_2"}

execute if score @s lumos_cooldown matches 21..40 run data modify storage pdb:main in.spell_wheel.lumos_icon_data merge value {Key:"D_3"}

execute if score @s lumos_cooldown matches 2..20 run data modify storage pdb:main in.spell_wheel.lumos_icon_data merge value {Key:"D_4"}

execute if score @s lumos_cooldown matches 1 run data modify storage pdb:main in.spell_wheel.lumos_icon_data merge value {Key:"D_5"}

function pdb:save_me
function pdb:get_me


execute if score @s lumos_cooldown matches 0.. run function pack:main/spells/function/lumos/set_icons/deactive/detect with storage pdb:main out.spell_wheel.lumos_icon_data
