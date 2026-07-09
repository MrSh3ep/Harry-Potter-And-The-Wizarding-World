execute as @e[type=marker,tag=spell_trail_particle_anchor] at @s unless entity @e[type=armor_stand,tag=spell_trail,distance=..2,limit=1,sort=nearest] run kill @s
