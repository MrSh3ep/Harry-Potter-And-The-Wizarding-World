#Replace this player's previous Lumos lights.
function hpww:main/spells/function/lumos/remove_owned_lights

#Summon markers for this active Lumos source.
execute if items entity @s weapon.* #hpww:lumos_emitter at @s positioned ~ ~1 ~ run function hpww:main/spells/function/lumos/summon_markers
