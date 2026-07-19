tag @e[type=marker,tag=levioso_light] add levioso_light_remove
execute as @e[type=armor_stand,tag=spell_trail,tag=trail_color_yellow] at @s align xyz run function hpww:main/spells/function/lumos/light/place
execute as @e[type=marker,tag=levioso_light_remove] at @s run function hpww:main/spells/function/lumos/light/remove
