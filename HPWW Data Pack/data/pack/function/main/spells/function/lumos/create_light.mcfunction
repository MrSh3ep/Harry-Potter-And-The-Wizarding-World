

#Replace old Lights
execute as @e[type=marker, tag=light] at @s run function pack:main/spells/function/lumos/replace_old_block


#Summon Markers
execute as @a[scores={lumos_activated=1}] if items entity @s weapon.* #pack:lumos_emitter at @s positioned ~ ~1 ~ run function pack:main/spells/function/lumos/summon_markers


#Place Light
execute as @e[type=marker, tag=light] at @s run function pack:main/spells/function/lumos/place_light