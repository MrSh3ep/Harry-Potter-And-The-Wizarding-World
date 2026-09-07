scoreboard players set @s HasPreset 0
scoreboard players set @s new_player_storage 0
scoreboard players set @s spell_wheel_cache_dirty 1
scoreboard players set @s hpww.fg.spell_wheel_page.notice_seen 0
scoreboard players set @s hppw.field_guide.first_open_dialog 0
scoreboard players set @s Joined 0

tellraw @s {text:"Your HPWW player data has been reset.", color: "red", bold: true, italic: false}
reload
