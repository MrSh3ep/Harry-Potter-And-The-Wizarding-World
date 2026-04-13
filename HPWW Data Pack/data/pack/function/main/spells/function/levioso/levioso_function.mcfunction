execute if score @s levioso_cooldown matches 1.. run return run function pack:main/spells/function/levioso/levioso_cooldown_sfx

function pack:main/spells/function/levioso/basic_function

scoreboard players set @s levioso_cooldown 180
scoreboard players set @s levioso_cooldown_visual 9
scoreboard players set @s levioso_selected_flash 1
function pack:main/spells/function/levioso/set_icons/start
