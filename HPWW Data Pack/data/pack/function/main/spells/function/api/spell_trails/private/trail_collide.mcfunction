particle end_rod ~ ~ ~ 1 1 1 0.5 150 force @a
particle flame ~ ~ ~ 1 1 1 2 150 force @a
particle minecraft:flash{color:-30327} ~ ~1 ~ 1 1 1 1 100 force @a

playsound entity.warden.sonic_boom master @a ~ ~ ~ 3 2

function pack:main/spells/function/api/spell_trails/private/cleanup_particle_anchor
kill @e[type=armor_stand, tag=spell_trail, limit=2, distance=0..4, nbt=!{Small:1b}]
