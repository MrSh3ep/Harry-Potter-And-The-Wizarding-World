# Load once, update every Lumos slot, then save once.
scoreboard players set @s lumos_icon_update_queue 0

data remove storage pdb:main in
data remove storage pdb:main out
function pdb:get_me
data modify storage pdb:main in set from storage pdb:main out

execute if score @s lumos_icon_state matches 0 run function pack:main/spells/function/lumos/set_icons/apply_all/active
execute if score @s lumos_icon_state matches 1 run function pack:main/spells/function/lumos/set_icons/apply_all/selected
execute if score @s lumos_icon_state matches 2 run function pack:main/spells/function/lumos/set_icons/apply_all/cooldown_0
execute if score @s lumos_icon_state matches 3 run function pack:main/spells/function/lumos/set_icons/apply_all/cooldown_1
execute if score @s lumos_icon_state matches 4 run function pack:main/spells/function/lumos/set_icons/apply_all/cooldown_2
execute if score @s lumos_icon_state matches 5 run function pack:main/spells/function/lumos/set_icons/apply_all/cooldown_3
execute if score @s lumos_icon_state matches 6 run function pack:main/spells/function/lumos/set_icons/apply_all/cooldown_4

function pdb:save_me
function pack:main/spellwheel/wheel/function/cache/queue_refresh
