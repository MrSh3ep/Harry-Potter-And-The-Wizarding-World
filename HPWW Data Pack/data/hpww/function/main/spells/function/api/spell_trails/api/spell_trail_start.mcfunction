execute if score @s lumos_activated matches 1 run function hpww:main/spells/function/lumos/lumos_cooldown

$summon armor_stand ^ ^ ^0.1 {Tags:[spell_trail, protego_blockable, needs_rotation, trail_color_$(color)], Small:1b, Invisible:1b, attributes:[{id:"gravity", base:0.0000000000000000001}]}

rotate @n[type=armor_stand, tag=needs_rotation, tag=spell_trail, limit=1, sort=nearest] ~ ~

tag @n[type=armor_stand, tag=needs_rotation, tag=spell_trail, limit=1, sort=nearest] add trail_color_custom
execute as @n[type=armor_stand, tag=needs_rotation, tag=spell_trail, tag=trail_color_red, limit=1, sort=nearest] run tag @s remove trail_color_custom
execute as @n[type=armor_stand, tag=needs_rotation, tag=spell_trail, tag=trail_color_basic_cast, limit=1, sort=nearest] run tag @s remove trail_color_custom
execute as @n[type=armor_stand, tag=needs_rotation, tag=spell_trail, tag=trail_color_depulso, limit=1, sort=nearest] run tag @s remove trail_color_custom
execute as @n[type=armor_stand, tag=needs_rotation, tag=spell_trail, tag=trail_color_yellow, limit=1, sort=nearest] run tag @s remove trail_color_custom
execute as @n[type=armor_stand, tag=needs_rotation, tag=spell_trail, tag=trail_color_dark_red, limit=1, sort=nearest] run tag @s remove trail_color_custom

data remove storage hpww:trail_storage in
data remove storage hpww:trail_storage out



#Save data
$data modify storage hpww:trail_storage in.trail_end_function.namespace set value $(end_function_namespace)


$data modify storage hpww:trail_storage in.trail_end_function.end_function set value "$(end_function)"

$data modify storage hpww:trail_storage in.trail_color set value {particle_colors:{particle_color_1:$(color_1), particle_color_2:$(color_2)}}

$data modify storage hpww:trail_storage in.trail_life_speed.life_ticks set value $(life_ticks)

$data modify storage hpww:trail_storage in.trail_life_speed.speed set value $(speed)

execute as @n[type=armor_stand, tag=needs_rotation, tag=spell_trail, limit=1, sort=nearest] run function hpww:main/spells/function/api/spell_trails/private/storage/new_player
execute as @n[type=armor_stand, tag=needs_rotation, tag=spell_trail, limit=1, sort=nearest] run function hpww:main/spells/function/api/spell_trails/private/storage/save_me

scoreboard players operation @n[type=armor_stand, tag=spell_trail, limit=1, sort=nearest] spell_uuid_0 = @s spell_uuid_0
scoreboard players operation @n[type=armor_stand, tag=spell_trail, limit=1, sort=nearest] spell_uuid_1 = @s spell_uuid_1
scoreboard players operation @n[type=armor_stand, tag=spell_trail, limit=1, sort=nearest] spell_uuid_2 = @s spell_uuid_2
scoreboard players operation @n[type=armor_stand, tag=spell_trail, limit=1, sort=nearest] spell_uuid_3 = @s spell_uuid_3


execute as @n[type=armor_stand, tag=needs_rotation, tag=spell_trail, limit=1, sort=nearest] run function hpww:main/spells/function/api/spell_trails/private/storage/get_me

execute as @n[type=armor_stand, tag=needs_rotation, tag=spell_trail, limit=1, sort=nearest] at @s run function hpww:main/spells/function/api/spell_trails/private/set_life_time with storage hpww:trail_storage out.trail_life_speed

tag @n[type=armor_stand, tag=needs_rotation, tag=spell_trail, limit=1, sort=nearest] remove needs_rotation
