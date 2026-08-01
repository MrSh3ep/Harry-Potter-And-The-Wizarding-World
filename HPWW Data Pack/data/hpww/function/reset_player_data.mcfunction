scoreboard players set @s HasPreset 0
scoreboard players set @s new_player_storage 0
scoreboard players set @s spell_wheel_cache_dirty 1

tellraw @s {text:"Your HPWW player data has been reset.", color: "red", bold: true, italic: false}
reload