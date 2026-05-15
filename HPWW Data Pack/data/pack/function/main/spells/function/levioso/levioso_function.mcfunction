function pack:main/spells/function/api/read_cooldown {spell:"levioso"}
execute if score @s cooldown_api matches 1.. run return run function pack:main/spells/function/levioso/levioso_cooldown_sfx

function pack:main/spells/function/levioso/basic_function

function pack:main/spells/function/api/start_cooldown {spell:"levioso",time:9}
function pack:main/spells/function/api/icons/flash_selected {spell:"levioso",ticks:20}
