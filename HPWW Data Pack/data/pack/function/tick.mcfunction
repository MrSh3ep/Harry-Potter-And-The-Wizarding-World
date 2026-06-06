# Wand Crafting Table
    execute if entity @e[tag=pack.custom_block,type=item_display,limit=1] as @e[tag=pack.custom_block,type=item_display] at @s run function pack:main/block/as_blocks
    execute if entity @e[type=armor_stand,tag=wand_crafting_table_detector,limit=1] run function pack:main/wand_crafting/detect/function/cores_and_wood



#Spell Wheel SFX
    execute as @a[scores={SpellWheelStatus=1}] at @s run function pack:main/spellwheel/wheel/function/sfx/change_page
    execute as @a[scores={SpellWheelStatus=1,spell_wheel_display_timer=1..}] run scoreboard players remove @s spell_wheel_display_timer 1
    execute as @a[scores={SpellWheelStatus=1,spell_wheel_maintenance_timer=1..}] run scoreboard players remove @s spell_wheel_maintenance_timer 1

# Cache each player's UUID so spells can keep track of who cast them.
    # Cached on load/first join.

#protego
    execute as @a[scores={SpellWheelStatus=1}] at @s unless items entity @s weapon.mainhand test_instance_block run function pack:main/spells/function/protego/protego_detect

#Spell API
    function pack:main/spells/function/api/spell_cooldown/tick

#Drop Prevention
    execute as @a[scores={SpellWheelStatus=1,spell_wheel_maintenance_timer=0}] at @s run function pack:main/spellwheel/wheel/function/maintenance
    function pack:main/spellwheel/wheel/function/remove_extra_wands

#Refresh cached page data only when it has been dirtied.
    execute as @a[scores={SpellWheelStatus=1,spell_wheel_cache_dirty=1..}] run function pack:main/spellwheel/wheel/function/cache/refresh_if_dirty

#Draw Spellwheel
    execute as @a[scores={SpellWheelStatus=1,spell_wheel_display_dirty=1..}] run function pack:main/spellwheel/wheel/function/display/start
    execute as @a[scores={SpellWheelStatus=1,spell_wheel_display_dirty=0,spell_wheel_display_timer=0}] run function pack:main/spellwheel/wheel/function/display/start

# Spell Wheel Settings triggers
execute as @a[scores={settings_menu_bind_spell=1..}] run function pack:main/spellwheel/wheel/function/settings_menu/bind_spell
execute as @a[scores={settings_menu_cancel=1..}] run function pack:main/spellwheel/wheel/function/settings_menu/cancel
execute as @a[scores={settings_menu_reset_player_data=1..}] run function pack:main/spellwheel/wheel/function/settings_menu/reset_player_data
execute as @a[scores={settings_menu_button_cooldown=1..}] run function pack:main/spellwheel/wheel/function/settings_menu/settings_cooldown





#right click detection spell wheel
execute as @a[scores={right_click_timer=1..}] at @s run function pack:main/spellwheel/wheel/function/pages/right_click/detect/rc_tick
execute as @a[scores={right_click_timer=0,right_click_count=1..}] at @s run function pack:main/spellwheel/wheel/function/pages/right_click/detect/rc_tick

#left click detection spell wheel
execute as @a[scores={left_click_timer=1..}] at @s run function pack:main/spellwheel/wheel/function/pages/left_click/detect/lc_tick
execute as @a[scores={left_click_timer=0,left_click_count=1..}] at @s run function pack:main/spellwheel/wheel/function/pages/left_click/detect/lc_tick


#left click tick for display etc
execute as @a[scores={lumos_activated=1,SpellWheelStatus=0}] run function pack:main/spellwheel/main_wand/tick

#Join Detection
execute as @a unless score @s Joined matches 1.. run tag @s add new_player
execute as @a[tag=new_player] run function pack:first_join


execute as @a if score @s SpellWheelStatus matches 1 run function pack:main/spells/function/other/selected_page_save

execute as @a[scores={basic_cast_cooldown=1..}] run scoreboard players remove @s basic_cast_cooldown 1

execute as @a as @s run function pack:main/spells/function/api/spell_trails/private/tick

execute as @a as @s run function pack:main/spells/function/api/duel_hp/private/tick

execute as @a unless score @s intilize_duel_hp matches 1 run function pack:new_duel_hp




