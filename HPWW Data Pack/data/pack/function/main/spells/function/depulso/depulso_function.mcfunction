function pack:main/spells/function/api/spell_cooldown/read_cooldown {spell:"depulso"}
execute if score @s cooldown_api matches 1.. run return run function pack:main/spells/function/depulso/depulso_cooldown_sfx

function pack:main/spells/function/depulso/start_vfx

function pack:main/spells/function/api/spell_cooldown/start_cooldown {spell:"depulso",time:9}
function pack:main/spells/function/api/spell_cooldown/icons/flash_selected {spell:"depulso",ticks:20}

function pack:main/spells/function/api/spell_trails/api/spell_trail_start {end_function_namespace:"pack",end_function:"main/spells/function/depulso/depulso_spell_start",color_1:[0.63,0.53,0.78], color_2:[0.46,0.33,0.65], speed:2200, life_ticks:20, color:"yellow"}

execute at @s run playsound minecraft:entity.wind_charge.wind_burst master @a[distance=0..25] ~ ~ ~ 1 1.1