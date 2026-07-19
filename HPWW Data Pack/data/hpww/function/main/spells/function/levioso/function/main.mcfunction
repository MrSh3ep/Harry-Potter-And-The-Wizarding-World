tag @s add levioso_active
effect give @s levitation 1 3 true
attribute @s gravity base set 0.000001
schedule function hpww:main/spells/function/levioso/function/set_air_drag 1s
scoreboard players set @s levioso_spell_active.timer 200
function hpww:main/spells/function/api/spell_cooldown/start_cooldown {spell:"protego",time:11}
execute at @s run function hpww:main/spells/function/levioso/function/main_line_7




