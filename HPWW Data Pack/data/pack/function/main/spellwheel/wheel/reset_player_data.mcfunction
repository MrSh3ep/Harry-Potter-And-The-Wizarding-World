execute as @s run scoreboard players set @s HasPreset 0
execute as @s run scoreboard players set @s new_player_storage 0
execute as @s run advancement revoke @s only pack:blocks/main_wand/right_click_main_wand
execute as @s run function pack:main/spellwheel/wheel/function/close_wheel

say Your Spell Wheel Has Been Reset.. Sorry For the Bugs \(-_-)/