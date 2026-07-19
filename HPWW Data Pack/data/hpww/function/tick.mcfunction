#targeting API
execute as @a at @s run function hpww:main/spells/function/lumos/tick

# Wand Crafting Table
    execute at @a if entity @e[tag=hpww.custom_block,limit=1, distance=..10, type=item_display,] as @e[tag=hpww.custom_block, distance=..10, type=item_display] at @s run function hpww:main/block/as_blocks
    execute at @a if entity @e[tag=wand_crafting_table_detector,limit=1, distance=..10, type=armor_stand] run function hpww:main/wand_crafting/detect/function/cores_and_wood


#these three, prtotego #drop prevention, #Draw Spell Wheel, And Spell Wheel SFX have to be in this order
        #protego
        execute as @a[scores={SpellWheelStatus=1}] at @s unless items entity @s weapon.mainhand test_instance_block run function hpww:main/spells/function/protego/protego_detect


#Drop Prevention
        execute as @a[scores={SpellWheelStatus=1,spell_wheel_maintenance_timer=0}] at @s run function hpww:main/spellwheel/wheel/function/maintenance


#Draw Spellwheel
        execute as @a[scores={SpellWheelStatus=1,spell_wheel_display_dirty=1..}] run function hpww:main/spellwheel/wheel/function/display/start
        execute as @a[scores={SpellWheelStatus=1,spell_wheel_display_dirty=0,spell_wheel_display_timer=0}] run function hpww:main/spellwheel/wheel/function/display/start

#Spell Wheel SFX
        execute as @a[scores={SpellWheelStatus=1}] at @s run function hpww:main/spellwheel/wheel/function/sfx/change_page
        execute as @a[scores={SpellWheelStatus=1,spell_wheel_display_timer=1..}] run scoreboard players remove @s spell_wheel_display_timer 1
        execute as @a[scores={SpellWheelStatus=1,spell_wheel_maintenance_timer=1..}] run scoreboard players remove @s spell_wheel_maintenance_timer 1




# Cache each player's UUID so spells can keep track of who cast them.
    # Cached on load/first join.



#Spell API
    function hpww:main/spells/function/api/spell_cooldown/tick
    function hpww:main/spells/function/expelliarmus/function/disarmed_wand/tick


    function hpww:main/spellwheel/wheel/function/remove_extra_wands

#Refresh cached page data only when it has been dirtied.
    execute as @a[scores={SpellWheelStatus=1,spell_wheel_cache_dirty=1..}] run function hpww:main/spellwheel/wheel/function/cache/refresh_if_dirty



    execute as @a[scores={SpellWheelStatus=1}] run function hpww:main/spellwheel/wheel/function/display/item_wheel/tick

execute as @a as @s at @s run function hpww:main/spells/function/api/duel_hp/api/knocked_out/tick


# Spell Wheel Settings triggers
execute as @a[scores={spell_wheel_tutorial_chat=1..}] run function hpww:main/spellwheel/wheel/tutorial/chat_trigger
execute as @a[scores={spell_wheel_tutorial_disable=1..}] run function hpww:main/spellwheel/wheel/tutorial/disable_trigger
execute as @a[scores={settings_menu_bind_spell=1..}] run function hpww:main/spellwheel/wheel/function/settings_menu/bind_spell
execute as @a[scores={settings_menu_cancel=1..}] run function hpww:main/spellwheel/wheel/function/settings_menu/cancel
execute as @a[scores={settings_menu_reset_player_data=1..}] run function hpww:main/spellwheel/wheel/function/settings_menu/reset_player_data
execute as @a[scores={settings_menu_button_cooldown=1..}] run function hpww:main/spellwheel/wheel/function/settings_menu/settings_cooldown




#right click detection spell wheel
execute as @a[scores={right_click_timer=1..}] at @s run function hpww:main/spellwheel/wheel/function/pages/right_click/detect/rc_tick
execute as @a[scores={right_click_timer=0,right_click_count=1..}] at @s run function hpww:main/spellwheel/wheel/function/pages/right_click/detect/rc_tick

#left click detection spell wheel
execute as @a[scores={left_click_timer=1..}] at @s run function hpww:main/spellwheel/wheel/function/pages/left_click/detect/lc_tick
execute as @a[scores={left_click_timer=0,left_click_count=1..}] at @s run function hpww:main/spellwheel/wheel/function/pages/left_click/detect/lc_tick


#left click tick for display etc
execute as @a[scores={lumos_activated=1,SpellWheelStatus=0}] run function hpww:main/spellwheel/main_wand/tick

#Join Detection
execute as @a unless score @s Joined matches 1.. run tag @s add new_player
execute as @a[tag=new_player] run function hpww:first_join


execute as @a if score @s SpellWheelStatus matches 1 run function hpww:main/spells/function/other/selected_page_save

execute as @a[scores={basic_cast_cooldown=1..}] run scoreboard players remove @s basic_cast_cooldown 1

function hpww:main/spells/function/api/spell_trails/private/tick
function hpww:main/spells/function/lumos/light/tick


execute as @a unless score @s intilize_duel_hp matches 1 run function hpww:new_duel_hp
execute unless score @s in_die_loop matches 0..1 run scoreboard players set @s in_die_loop 0

execute as @a if score @s knocked_out_timer matches ..-1 run function hpww:main/spells/function/api/duel_hp/api/knocked_out/re_alive

function hpww:main/spells/function/levioso/function/tick

#brewing
function hpww:main/brewing/cauldron/tick

#level
execute as @a run function hpww:main/spells/function/skills/level/tick

execute as @a at @s run function hpww:main/field_guide/tick



