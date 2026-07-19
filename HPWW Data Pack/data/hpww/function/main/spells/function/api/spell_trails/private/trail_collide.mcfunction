particle end_rod ~ ~ ~ 1 1 1 0.5 80 force @a[distance=..32]
particle flame ~ ~ ~ 1 1 1 2 80 force @a[distance=..32]
particle minecraft:flash{color:-30327} ~ ~1 ~ 1 1 1 1 60 force @a[distance=..32]

playsound entity.warden.sonic_boom master @a[distance=..32] ~ ~ ~ 3 2

function hpww:main/spells/function/api/spell_trails/private/cleanup_particle_anchor
kill @e[type=armor_stand, tag=spell_trail, limit=2, distance=0..4, nbt=!{Small:1b}]
