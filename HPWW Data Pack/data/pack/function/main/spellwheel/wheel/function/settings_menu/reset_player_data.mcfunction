#declare objective settings_menu_reset_player_data
advancement revoke @s only pack:blocks/main_wand/right_click_settings_button
scoreboard players set @s settings_menu_button_cooldown 3
scoreboard players reset @s settings_menu_reset_player_data
function pack:main/spellwheel/wheel/reset_player_data
gamerule send_command_feedback true

