# Load once, update every Levioso slot, then save once.
scoreboard players set @s levioso_icon_update_queue 0

data remove storage pdb:main in
data remove storage pdb:main out
function pdb:get_me
data modify storage pdb:main in set from storage pdb:main out

execute if score @s levioso_icon_state matches 0 run data modify storage pack:spell_icon_context levioso set value {key:"Active"}
execute if score @s levioso_icon_state matches 1 run data modify storage pack:spell_icon_context levioso set value {key:"Selected"}
execute if score @s levioso_icon_state matches 2 run data modify storage pack:spell_icon_context levioso set value {key:"Deactive.D_0"}
execute if score @s levioso_icon_state matches 3 run data modify storage pack:spell_icon_context levioso set value {key:"Deactive.D_1"}
execute if score @s levioso_icon_state matches 4 run data modify storage pack:spell_icon_context levioso set value {key:"Deactive.D_2"}
execute if score @s levioso_icon_state matches 5 run data modify storage pack:spell_icon_context levioso set value {key:"Deactive.D_3"}
execute if score @s levioso_icon_state matches 6 run data modify storage pack:spell_icon_context levioso set value {key:"Deactive.D_4"}
execute if score @s levioso_icon_state matches 7 run data modify storage pack:spell_icon_context levioso set value {key:"Deactive.D_5"}
execute if score @s levioso_icon_state matches 8 run data modify storage pack:spell_icon_context levioso set value {key:"Deactive.D_6"}
execute if score @s levioso_icon_state matches 9 run data modify storage pack:spell_icon_context levioso set value {key:"Deactive.D_7"}
execute if score @s levioso_icon_state matches 10 run data modify storage pack:spell_icon_context levioso set value {key:"Deactive.D_8"}


function pack:main/spells/function/levioso/set_icons/apply_key with storage pack:spell_icon_context levioso

function pdb:save_me
function pack:main/spellwheel/wheel/function/cache/queue_refresh
