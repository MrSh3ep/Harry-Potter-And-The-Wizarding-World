$summon armor_stand ^ ^ ^1 {Tags:[spell_trail, needs_rotation, trail_color_$(color)], attributes:[{id:"gravity", base:0.0000000000000000001}], Invisible:1b}
rotate @n[type=armor_stand, tag=needs_rotation, tag=spell_trail, limit=1, sort=nearest] ~ ~

data remove storage pack:trail_storage in
data remove storage pack:trail_storage out

$data modify storage pack:trail_storage in.trail_color set from storage pack:spell_trail_definitions $(color).particle_colors

execute as @n[type=armor_stand, tag=needs_rotation, tag=spell_trail, limit=1, sort=nearest] run function pack:main/spells/function/api/spell_trails/private/storage/new_player
execute as @n[type=armor_stand, tag=needs_rotation, tag=spell_trail, limit=1, sort=nearest] run function pack:main/spells/function/api/spell_trails/private/storage/save_me



$execute as @n[type=armor_stand, tag=needs_rotation, tag=spell_trail, limit=1, sort=nearest] at @s run function pack:main/spells/function/api/spell_trails/private/set_life_time with storage pack:spell_trail_definitions $(color)
tag @n[type=armor_stand, tag=needs_rotation, tag=spell_trail, limit=1, sort=nearest] remove needs_rotation

