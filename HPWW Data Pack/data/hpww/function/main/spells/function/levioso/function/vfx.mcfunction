particle cloud ~ ~ ~ 0.254 0 0.254 0.1 1 force @a
particle ash ~ ~ ~ 0.1 0 0.1 1 1
particle dust{color:[1.0,0.89,0.35], scale:1} ~ ~-2.5 ~ 0 1 0 1 10

execute if score @s SpellWheelStatus matches 1 run function hpww:main/spellwheel/wheel/function/close_wheel
scoreboard players operation @s levioso_spell_active.timer_display = @s levioso_spell_active.timer
scoreboard players operation @s levioso_spell_active.timer_display /= @s number_20
scoreboard players operation @s levioso_spell_active.timer_display += @s number_1



title @s actionbar ["You are charmed with",{color:"#ffed87",text:" Levioso!"}," | ",{color:"green",score:{name:"@s",objective:"levioso_spell_active.timer_display"},extra:["s"]}]

