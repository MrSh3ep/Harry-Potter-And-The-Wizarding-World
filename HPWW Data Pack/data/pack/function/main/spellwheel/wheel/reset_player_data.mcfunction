execute as @s run scoreboard players set @s HasPreset 0
execute as @s run scoreboard players set @s new_player_storage 0
execute as @s run scoreboard players set @s spell_wheel_cache_dirty 1
execute as @s run advancement grant @s only pack:blocks/main_wand/right_click_exit_wheel_button
execute as @s run advancement revoke @s only pack:blocks/main_wand/right_click_main_wand

tellraw @s {text:"Your HPWW player data has been reset..", color: "dark_red", bold: true, italic: false}