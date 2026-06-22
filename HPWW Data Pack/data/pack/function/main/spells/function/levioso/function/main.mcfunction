tag @s add levioso_active
effect give @s levitation 1 3 true
attribute @s gravity base set 0.000001
schedule function pack:main/spells/function/levioso/function/set_air_drag 1s
scoreboard players set @s levioso_spell_active.timer 200
function pack:main/spells/function/api/spell_cooldown/start_cooldown {spell:"protego",time:11}
execute at @s run playsound entity.wind_charge.wind_burst master @a[distance=0..25] ~ ~ ~ 1 1
execute at @s run playsound entity.breeze.whirl master @a[distance=0..25] ~ ~ ~ 1 1
execute at @s run playsound block.wet_sponge.dries master @a[distance=0..25] ~ ~ ~ 1 1




