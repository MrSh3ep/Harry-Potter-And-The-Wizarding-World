tag @s add levioso_active
effect give @s levitation 1 3 true
attribute @s gravity base set 0.000001
schedule function pack:main/spells/function/levioso/function/set_air_drag 1s
scoreboard players set @s levioso_spell_active.timer 200

