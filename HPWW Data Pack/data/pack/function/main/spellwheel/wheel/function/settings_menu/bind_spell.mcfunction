#declare objective settings_menu_bind_spell
dialog clear @s

scoreboard players operation @s settings_bind_encoded = @s settings_menu_bind_spell
scoreboard players reset @s settings_menu_bind_spell

scoreboard players operation @s settings_bind_spell = @s settings_bind_encoded
scoreboard players operation @s settings_bind_spell %= #100 settings_bind_const

scoreboard players operation @s settings_bind_slot = @s settings_bind_encoded
scoreboard players operation @s settings_bind_slot /= #100 settings_bind_const
scoreboard players operation @s settings_bind_slot %= #100 settings_bind_const

scoreboard players operation @s settings_bind_page = @s settings_bind_encoded
scoreboard players operation @s settings_bind_page /= #10000 settings_bind_const

execute unless score @s settings_bind_page matches 1..7 run return fail
execute unless score @s settings_bind_slot matches 1..4 run return fail

data remove storage pdb:main in
data remove storage pdb:main out
function pdb:get_me
data modify storage pdb:main in set from storage pdb:main out

data remove storage pdb:main bind_spell
execute store result storage pdb:main bind_spell.Page int 1 run scoreboard players get @s settings_bind_page
execute store result storage pdb:main bind_spell.Slot int 1 run scoreboard players get @s settings_bind_slot

execute if score @s settings_bind_spell matches 0 run data modify storage pdb:main bind_spell.SpellData set from storage pack:gobal_spell_data blank
execute if score @s settings_bind_spell matches 1 run data modify storage pdb:main bind_spell.SpellData set from storage pack:gobal_spell_data lumos

execute unless data storage pdb:main bind_spell.SpellData run return fail

function pack:main/spellwheel/wheel/function/settings_menu/bind_spell_commit with storage pdb:main bind_spell
function pdb:save_me

scoreboard players set @s settings_menu_button_cooldown 20
advancement revoke @s only pack:blocks/main_wand/right_click_settings_button
advancement revoke @s only pack:blocks/main_wand/right_click_exit_wheel_button
