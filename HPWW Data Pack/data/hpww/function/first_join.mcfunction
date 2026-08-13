scoreboard players set @s Joined 1
tag @s remove new_player
function hpww:main/spells/function/other/store_uuid



# add first join stuff below
scoreboard players set @s right_click_advancement_cooldown 0
scoreboard players set @s right_click_timer 1
scoreboard players set @s right_click_timer 1
scoreboard players set @s left_click_timer 1
scoreboard players set @s left_click_count 0
scoreboard players set @s number_1 1
scoreboard players set @s number_2 2
scoreboard players set #fake_player_zero_number number_0 0
scoreboard players set @s protego_spell_wheel_value 4
scoreboard players set #-1 spacefont -1
scoreboard players set @s cooldown_api 0
scoreboard players set @s cooldown_api_active 1
scoreboard players set @s cooldown_api_probe 1
scoreboard players set @s lumos_activated 0
scoreboard players set @s SelectedSlot_icon 0
scoreboard players set @s number_0 0
scoreboard players set #fake_player_zero_number number_0 0
recipe give @s hpww:dragon_heartstring
recipe give @s hpww:unicorn_hair
recipe give @s hpww:phoenix_feather
recipe give @s hpww:wand_crafting_table
scoreboard players set @s basic_cast_cooldown 0
scoreboard players set @s protego_activated 0
scoreboard players set @s protego_block_timer 0
scoreboard players set @s protego_q_lock 0
scoreboard players set @s basic_cast_icon_variant 0
scoreboard players set @s HasPreset 0
scoreboard players set @s spell_wheel_cache_dirty 1
scoreboard players set @s spell_wheel_display_timer 0
scoreboard players set @s spell_wheel_display_dirty 0
scoreboard players set @s spell_wheel_maintenance_timer 0
scoreboard players set @s spell_wheel_attack_mode 0
scoreboard players set @s total_duel_hp 100
scoreboard players set @s current_duel_hp 100
scoreboard players set @s intilize_duel_hp 1
scoreboard players set @s in_die_loop 0
scoreboard players set @s levioso_spell_active.timer 0
scoreboard players set @s levioso_spell_active.hit_count 0
scoreboard players set @s SettingsMenuStatus 0
scoreboard players set @s SettingsMenu.page.main 0
scoreboard players set @s hpww.interaction.is_being_looked_at 0
scoreboard players set @s SettingsMenu.page.spell_wheel 0
scoreboard players set @s hpww.api.UUID_Selector 0
scoreboard players set @s hpww.fg.spell_wheel_page.drawer_page 0
scoreboard players set @s hpww.fg.spell_wheel_page.wheel_page 0

advancement revoke @s only hpww:spells/unlocked/depulso_unlocked
advancement revoke @s only hpww:spells/unlocked/levioso_unlocked
advancement revoke @s only hpww:spells/unlocked/expelliarmus_unlocked
advancement revoke @s only hpww:spells/unlocked/lumos_unlocked
advancement revoke @s only hpww:spells/unlocked/protego_unlocked









