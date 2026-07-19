function hpww:main/spells/function/api/spell_cooldown/read_cooldown {spell:"expelliarmus"}
execute if score @s cooldown_api matches 1.. run return run function hpww:main/spells/function/expelliarmus/expelliarmus_cooldown_sfx

function hpww:main/spells/function/expelliarmus/start_vfx

function hpww:main/spells/function/api/spell_cooldown/start_cooldown {spell:"expelliarmus",time:15}
function hpww:main/spells/function/api/spell_cooldown/icons/flash_selected {spell:"expelliarmus",ticks:20}

function hpww:main/spells/function/api/spell_trails/api/spell_trail_start {end_function_namespace:"hpww",end_function:"main/spells/function/expelliarmus/expelliarmus_spell_start",color_1:[0.78,0.13,0.0], color_2:[0.78,0.0,0.0], speed:2200, life_ticks:20, color:"dark_red"}

execute at @s run playsound minecraft:entity.wind_charge.wind_burst master @a[distance=0..25] ~ ~ ~ 1 1.1