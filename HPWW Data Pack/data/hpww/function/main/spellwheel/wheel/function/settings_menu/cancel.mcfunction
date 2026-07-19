#declare objective settings_menu_cancel
advancement revoke @s only hpww:blocks/main_wand/right_click_settings_button
function hpww:main/spellwheel/wheel/function/cache/refresh_if_dirty
scoreboard players set @s settings_menu_button_cooldown 3
scoreboard players reset @s settings_menu_cancel
gamerule send_command_feedback true
