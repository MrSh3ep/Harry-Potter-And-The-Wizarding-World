function pack:main/spells/function/api/spell_cooldown/read_cooldown {spell:"levioso"}
execute if score @s cooldown_api matches 1.. run return run function pack:main/spells/function/levioso/levioso_cooldown_sfx

function pack:main/spells/function/levioso/basic_function

function pack:main/spells/function/api/spell_cooldown/start_cooldown {spell:"levioso",time:9}
function pack:main/spells/function/api/spell_cooldown/icons/flash_selected {spell:"levioso",ticks:20}

function pack:main/spells/function/api/spell_trails/api/spell_trail_start {end_function_namespace:"pack",end_function:"main/spells/function/levioso/levioso_spell_start",color_1:[1.0,0.89,0.35], color_2:[0.91,0.76,0.03], speed:2200, life_ticks:20, color:"yellow"}

execute at @s run playsound minecraft:entity.wind_charge.wind_burst master @a[distance=0..25] ~ ~ ~ 1 1.1