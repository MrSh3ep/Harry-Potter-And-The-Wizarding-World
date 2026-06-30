

function pack:main/spellwheel/wheel/function/save_preset
scoreboard players set @s SpellWheelStatus 0
scoreboard players set @s spell_wheel_display_dirty 0
scoreboard players set @s spell_wheel_display_timer 0
scoreboard players set @s spell_wheel_maintenance_timer 0
playsound block.vault.deactivate master @s ~ ~ ~ 1 1

item replace entity @s hotbar.0 with air
item replace entity @s hotbar.1 with air
item replace entity @s hotbar.2 with air
item replace entity @s hotbar.3 with air
item replace entity @s hotbar.4 with air
item replace entity @s hotbar.5 with air
item replace entity @s hotbar.6 with air
item replace entity @s hotbar.7 with air
item replace entity @s hotbar.8 with air

data remove storage pdb:main out
function pdb:get_me_cached

execute at @s run function pack:main/spellwheel/wheel/function/restore_hotbar_slot {slot:0}
execute at @s run function pack:main/spellwheel/wheel/function/restore_hotbar_slot {slot:1}
execute at @s run function pack:main/spellwheel/wheel/function/restore_hotbar_slot {slot:2}
execute at @s run function pack:main/spellwheel/wheel/function/restore_hotbar_slot {slot:3}
execute at @s run function pack:main/spellwheel/wheel/function/restore_hotbar_slot {slot:4}
execute at @s run function pack:main/spellwheel/wheel/function/restore_hotbar_slot {slot:5}
execute at @s run function pack:main/spellwheel/wheel/function/restore_hotbar_slot {slot:6}
execute at @s run function pack:main/spellwheel/wheel/function/restore_hotbar_slot {slot:7}
execute at @s run function pack:main/spellwheel/wheel/function/restore_hotbar_slot {slot:8}

advancement revoke @s only pack:blocks/main_wand/right_click_main_wand
advancement revoke @s only pack:blocks/main_wand/right_click_exit_wheel_button
advancement revoke @s only pack:blocks/main_wand/right_click_settings_button

title @s actionbar ""
