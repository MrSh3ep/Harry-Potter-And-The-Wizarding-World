tag @s add protego_owner_check

# The owner tag makes the display collision safe for the caster while allowing
# every other movable entity within the Protego shell to be bounced away.
execute at @e[type=item_display,tag=aj.protego.root,limit=1,sort=nearest] as @e[distance=0..1.8,tag=!protego_owner_check,type=!item_display] facing entity @s eyes rotated ~ 0 run function hpww:main/spells/function/protego/bounce

tag @e[type=armor_stand, tag=protego_block_target, distance=0..3.5] remove protego_block_target
tag @e[type=armor_stand, tag=protego_blockable, distance=0..3.5] add protego_block_target
execute as @e[type=armor_stand, tag=protego_block_target, distance=0..3.5] if score @s spell_uuid_0 = @a[tag=protego_owner_check, limit=1, sort=nearest] spell_uuid_0 if score @s spell_uuid_1 = @a[tag=protego_owner_check, limit=1, sort=nearest] spell_uuid_1 if score @s spell_uuid_2 = @a[tag=protego_owner_check, limit=1, sort=nearest] spell_uuid_2 if score @s spell_uuid_3 = @a[tag=protego_owner_check, limit=1, sort=nearest] spell_uuid_3 run tag @s remove protego_block_target

execute if entity @e[type=armor_stand, tag=protego_block_target, distance=0..3.5] run function hpww:main/spells/function/protego/block
tag @s remove protego_owner_check

execute as @s at @s run tp @e[tag=aj.protego.root, type=item_display, limit=1, sort=nearest] ~ ~0.01 ~ ~ 0

effect give @s slowness 1 1 true

