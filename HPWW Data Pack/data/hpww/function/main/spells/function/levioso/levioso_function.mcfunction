function hpww:main/spells/function/api/spell_cooldown/read_cooldown {spell:"levioso"}
execute if score @s cooldown_api matches 1.. run return run function hpww:main/spells/function/levioso/levioso_cooldown_sfx

function hpww:main/spells/function/levioso/basic_function

function hpww:main/spells/function/api/spell_cooldown/start_cooldown {spell:"levioso",time:3}
function hpww:main/spells/function/api/spell_cooldown/icons/flash_selected {spell:"levioso",ticks:20}

function hpww:main/spells/function/api/spell_trails/api/spell_trail_start {end_function_namespace:"hpww",end_function:"main/spells/function/levioso/levioso_spell_start",color_1:[1.0,0.89,0.35], color_2:[0.91,0.76,0.03], speed:2400, life_ticks:20, color:"yellow"}

execute at @s run playsound minecraft:entity.wind_charge.wind_burst master @a[distance=0..25] ~ ~ ~ 1 1.1