#declare objective settings_menu_reset_player_data
advancement revoke @s only pack:blocks/main_wand/right_click_settings_button
scoreboard players reset @s settings_menu_reset_player_data
function pack:main/spellwheel/wheel/reset_player_data
