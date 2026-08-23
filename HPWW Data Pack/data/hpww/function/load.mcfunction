

execute if score #startup_message_player startup_message matches 1 run tellraw @a ["",{bold:true,text:"",extra:[{color:"#c5a7fd",text:"H"},{color:"#c1a1fb",text:"a"},{color:"#bd9cf9",text:"r"},{color:"#b896f8",text:"r"},{color:"#b491f6",text:"y "},{color:"#ac86f2",text:"P"},{color:"#a880f0",text:"o"},{color:"#a47bee",text:"t"},{color:"#9f75ed",text:"t"},{color:"#9b70eb",text:"e"},{color:"#976ae9",text:"r "},{color:"#9b6ddb",text:"|"},{color:"#ac7dc2",text:" A"},{color:"#b484b6",text:"n"},{color:"#bd8ca9",text:"d "},{color:"#cd9c91",text:"T"},{color:"#d5a485",text:"h"},{color:"#deac78",text:"e "},{color:"#eebb60",text:"W"},{color:"#f7c353",text:"i"},{color:"#ffcb47",text:"z"},{color:"#ffcc4c",text:"a"},{color:"#ffcd52",text:"r"},{color:"#ffcd57",text:"d"},{color:"#ffce5d",text:"i"},{color:"#ffcf62",text:"n"},{color:"#ffd067",text:"g "},{color:"#ffd172",text:"W"},{color:"#ffd277",text:"o"},{color:"#ffd37d",text:"r"},{color:"#ffd382",text:"l"},{color:"#ffd488",text:"d "}]},{color:"white",text:"has reloaded!\n",extra:[{bold:true,text:"Version"}," -"]},{color:"green",text:" Release 1.0! \n"},{color:"white",text:"",extra:[{bold:true,text:"Creator"}," - "]},{bold:true,text:"",extra:[{color:"#607451",text:"M"},{color:"#6b7a57",text:"r"},{color:"#767f5c",text:"S"},{color:"#818562",text:"h"},{color:"#8a8663",text:"3"},{color:"#948863",text:"e"},{color:"#9d8964",text:"p"}]},"\n",{color:"dark_red",bold:true,text:"WARNING!! ",hover_event:{action:"show_text",value:["",{color:"red",text:"It is highly suggested that if updating from an old version of HPWW like 0.2 to 0.3 specifically..you reset ALL players HPWW data, and either delete all items related to the datahpww, or replace them with /loot command. Many changes were made and old items no longer work!"}]}},{color:"red",text:"(Click here to reset ALL player data) \n",click_event:{action:"run_command",command:"execute as @a run function hpww:reset_global_storage"},hover_event:{action:"show_text",value:["",{color:"dark_red",text:"Resets all players HPWW scores and storages"}]}},{color:"gray",text:"(Click to disable this message..)\n",click_event:{action:"run_command",command:"/function hpww:startup_message/startup_message_disable"},hover_event:{action:"show_text",value:["",{text:"Disables the /reload message for HPWW"}]}},{bold:true,text:"",extra:[{color:"dark_aqua",text:"Discord ",click_event:{action:"open_url",url:"https://discord.gg/G2Wkg9CFuE"}},{color:"white",text:"- "}]},{color:"white",text:"Join my discord for ",extra:[{bold:true,text:"Help"},", and ",{bold:true,text:"Updates"}]}]
  scoreboard objectives add startup_message dummy
  execute unless score #startup_message_player startup_message matches 0.. run scoreboard players set #startup_message_player startup_message 1

  kill @e[type=armor_stand, tag=levioso_active]

  execute as @a run attribute @s air_drag_modifier base reset
  execute as @a run attribute @s gravity base reset
  execute as @e[tag=levioso_active] at @s run function hpww:main/spells/function/levioso/function/end
  tag @e remove levioso_active
  scoreboard objectives add levioso_spell_active.timer dummy
  scoreboard objectives add levioso_spell_active.hit_count dummy
  scoreboard objectives add levioso_spell_active.timer_display dummy
    


# item_wheel api
function hpww:main/spells/function/api/item_wheel/allowed_items
scoreboard objectives add item_wheel_state dummy
scoreboard objectives add item_wheel_shift_down dummy
scoreboard players set @a item_wheel_state 0
scoreboard players set @a item_wheel_shift_down 0


execute as @a unless score @s HasPreset matches 1 run scoreboard players set @s HasPreset 0
execute as @a unless score @s new_player_storage matches 1 run scoreboard players set @s new_player_storage 0

#Wand Crafting Table Item Detection
    scoreboard objectives add oak_log dummy
    scoreboard objectives add spruce_log dummy
    scoreboard objectives add birch_log dummy
    scoreboard objectives add dark_oak_log dummy
    scoreboard objectives add acacia_log dummy
    scoreboard objectives add jungle_log dummy
    scoreboard objectives add mangrove_log dummy
    scoreboard objectives add cherry_log dummy
    scoreboard objectives add pale_oak_log dummy

    scoreboard objectives add unicorn_hair dummy
    scoreboard objectives add dragon_heartstring dummy
    scoreboard objectives add phoenix_feather dummy
  

#Spell Wheel
advancement revoke @a only hpww:blocks/main_wand/right_click_settings_button
advancement revoke @a only hpww:blocks/main_wand/right_click_exit_wheel_button
execute as @s if score @s SpellWheelStatus matches 0 run advancement revoke @a only hpww:blocks/main_wand/right_click_main_wand
advancement revoke @a only hpww:pages/lc_cooldown
advancement revoke @a only hpww:pages/rc_cooldown







    scoreboard objectives add pdb dummy
    scoreboard objectives add new_player_storage dummy
    scoreboard objectives add HasPreset dummy
    scoreboard objectives add SpellWheelStatus dummy
    scoreboard objectives add kill_tile dummy
    scoreboard objectives add spell_wheel_cache_dirty dummy
    scoreboard players set @a spell_wheel_cache_dirty 1
    scoreboard objectives add spell_wheel_display_timer dummy
    scoreboard players set @a spell_wheel_display_timer 0
    scoreboard objectives add spell_wheel_display_dirty dummy
    scoreboard players set @a spell_wheel_display_dirty 0
    scoreboard objectives add spell_wheel_maintenance_timer dummy
    scoreboard players set @a spell_wheel_maintenance_timer 0

    #Spell Wheel SFX
    scoreboard objectives add HotbarSound dummy
    scoreboard objectives add SelectedSlot dummy
    scoreboard objectives add SelectedSlot.1 dummy
    
    scoreboard objectives add LastSelectedSlot dummy

    # Settings Menu
    scoreboard objectives add settings_menu_cancel trigger
    scoreboard objectives add settings_menu_bind_spell trigger
    scoreboard objectives add settings_menu_reset_player_data trigger
    scoreboard objectives add spell_wheel_tutorial_chat trigger
    scoreboard objectives add spell_wheel_tutorial_disable trigger
    scoreboard objectives add spell_wheel_tutorial_disabled dummy
    scoreboard objectives add settings_menu_button_cooldown dummy
    scoreboard players set @a settings_menu_button_cooldown 0
    scoreboard objectives add settings_bind_encoded dummy
    scoreboard objectives add settings_bind_spell dummy
    scoreboard objectives add settings_bind_page dummy
    scoreboard objectives add settings_bind_slot dummy
    scoreboard objectives add settings_bind_const dummy
    scoreboard players set #100 settings_bind_const 100
    scoreboard players set #10000 settings_bind_const 10000


    recipe give @a hpww:dragon_heartstring
    recipe give @a hpww:unicorn_hair
    recipe give @a hpww:phoenix_feather
    recipe give @a hpww:wand_crafting_table
    advancement revoke @a only hpww:blocks/main_wand/right_click_settings_button


    #Right Click
        scoreboard objectives add right_click_advancement_cooldown dummy
        scoreboard players set @a right_click_advancement_cooldown 0
        scoreboard objectives add right_click_timer dummy
        scoreboard objectives add right_click_count dummy
        scoreboard players set @a right_click_timer 1
        scoreboard players set @a right_click_count 0

    #Leftg Click
        scoreboard objectives add left_click_advancement_cooldown dummy
        scoreboard players set @a left_click_advancement_cooldown 0
        scoreboard objectives add left_click_timer dummy
        scoreboard objectives add left_click_count dummy
        scoreboard players set @a left_click_timer 1
        scoreboard players set @a left_click_count 0

        #global numbers
        scoreboard objectives add number_1 dummy
        scoreboard players set @a number_1 1

        scoreboard objectives add number_2 dummy
        scoreboard players set @a number_2 2
        scoreboard objectives add number_20 dummy
        scoreboard players set @a number_20 20

        scoreboard objectives add number_0 dummy
        scoreboard players set #fake_player_zero_number number_0 0




    

#Spell API
    scoreboard objectives add cooldown_api dummy
    scoreboard objectives add cooldown_api_active dummy
    scoreboard objectives add cooldown_api_probe dummy
    scoreboard players set @a cooldown_api_active 1
    scoreboard players set @a cooldown_api_probe 1
    scoreboard players set #20 cooldown_api 20
    scoreboard players set #26 cooldown_api 26
    scoreboard players set #27 cooldown_api 27
    scoreboard players set #1000 cooldown_api 1000

#Spell Visuals
    scoreboard objectives add protego_spell_wheel_value dummy
    scoreboard players set @a protego_spell_wheel_value 4
    
    


#Font load
# Create scoreboard and intiialize values:
scoreboard objectives add spacefont dummy
scoreboard players set #-1 spacefont -1

# Spells
function hpww:main/spells/function/api/spell_cooldown/spell_definitions
function hpww:main/spells/function/api/spell_trails/api/trail_definition_examples
scoreboard objectives add expelliarmus_wand_slot dummy
scoreboard players set @a expelliarmus_wand_slot -1
scoreboard objectives add expelliarmus_wand_age dummy
scoreboard objectives add expelliarmus_wand_spin dummy
scoreboard objectives add expelliarmus_wand_spin_frame dummy


    #Protego
        scoreboard objectives add protego_activated dummy
        scoreboard players set @a protego_activated 0
        scoreboard objectives add protego_block_timer dummy
        scoreboard players set @a protego_block_timer 0
        scoreboard objectives add protego_q_lock dummy
        scoreboard players set @a protego_q_lock 0

    #Lumos
        scoreboard objectives add lumos_activated dummy
        scoreboard players set @a lumos_activated 0
        execute as @e[type=marker,tag=light] at @s run function hpww:main/spells/function/lumos/replace_old_block

        #Join Detection
        scoreboard objectives add Joined minecraft.custom:minecraft.leave_game

        scoreboard objectives add SelectedSlot_icon dummy
        scoreboard players set @s SelectedSlot_icon 0

#Basic Cast
scoreboard objectives add basic_cast_cooldown dummy
scoreboard players set @a basic_cast_cooldown 0
scoreboard objectives add basic_cast_lifetime dummy
scoreboard players set @a basic_cast_lifetime 0
scoreboard objectives add basic_cast_lc_cooldown dummy
scoreboard players set @s basic_cast_lc_cooldown 0
scoreboard players set @a basic_cast_icon_variant 0

scoreboard objectives add basic_cast_icon_variant dummy

scoreboard objectives add spell_uuid_0 dummy
scoreboard players set @a spell_uuid_0 0
scoreboard objectives add spell_uuid_1 dummy
scoreboard players set @a spell_uuid_1 0
scoreboard objectives add spell_uuid_2 dummy
scoreboard players set @a spell_uuid_2 0
scoreboard objectives add spell_uuid_3 dummy
scoreboard players set @a spell_uuid_3 0
execute as @a run function hpww:main/spells/function/other/store_uuid

# UUID Selector API
scoreboard objectives add hpww.api.UUID_Selector dummy
scoreboard players set @a hpww.api.UUID_Selector 0
scoreboard objectives add hpww.api.UUID0 dummy
scoreboard objectives add hpww.api.UUID1 dummy
scoreboard objectives add hpww.api.UUID2 dummy
scoreboard objectives add hpww.api.UUID3 dummy
scoreboard objectives add hpww.api.UUID_Linked dummy

execute as @a run function aj:protego/remove/entities


scoreboard objectives add spell_wheel_attack_mode dummy
scoreboard players set @a spell_wheel_attack_mode 0

scoreboard objectives add spell_trail_life_ticks dummy
scoreboard objectives add spell_trail_schedule dummy
scoreboard objectives add spell_trail_motion dummy
scoreboard objectives add spell_trail_speed dummy
scoreboard players set #-1 spell_trail_motion -1
scoreboard players set #speed_scale spell_trail_motion 1000
scoreboard players set #max_step spell_trail_motion 100
scoreboard players set #half_step spell_trail_motion 50
scoreboard players set #2 spell_trail_motion 2
scoreboard players set #cleanup_timer spell_trail_schedule 0
scoreboard players set #default spell_trail_speed 1000



#Duel HP
scoreboard objectives add total_duel_hp dummy
scoreboard objectives add current_duel_hp dummy
scoreboard objectives add intilize_duel_hp dummy
execute as @a unless score @s intilize_duel_hp matches 1 run function hpww:new_duel_hp
scoreboard objectives add knocked_out_timer dummy
scoreboard players set @a knocked_out_timer 0
scoreboard objectives add in_die_loop dummy
execute unless score @s in_die_loop matches 0..1 run scoreboard players set @s in_die_loop 0

scoreboard objectives add knocked_out_timer_seconds dummy
scoreboard objectives add knocked_out_timer_temp dummy

#targeting API
scoreboard objectives add target.glowing dummy
 
# level
scoreboard objectives add hpww.gainingXP dummy
scoreboard objectives add hpww.xp_nextlevel dummy
scoreboard objectives add hpww.total_xp_nextlevel dummy
scoreboard objectives add level.SpellWheelDraw dummy
scoreboard objectives add hpww.level_has_row dummy
scoreboard objectives add hpww.FillGlyph dummy
scoreboard objectives add hpww.NumberGlyph dummy
execute as @a unless score @s hpww.NumberGlyph matches 100.. run scoreboard players set @s hpww.NumberGlyph 101
execute as @a unless score @s hpww.FillGlyph matches 100.. run scoreboard players set @s hpww.FillGlyph 100

#Field Guid
scoreboard objectives add SettingsMenuStatus dummy
scoreboard objectives add SettingsMenu.page.main dummy
scoreboard objectives add hpww.interaction.is_being_looked_at dummy
scoreboard objectives add SettingsMenu.page.spell_wheel dummy

scoreboard objectives add hpww.fg.spell_wheel_page.drawer_page dummy
scoreboard objectives add hpww.fg.spell_wheel_page.wheel_page dummy
scoreboard objectives add hpww.fg.spell_wheel_page.notice_seen dummy
scoreboard objectives add hpww.drawer_selected_slot dummy


#bind spell api
scoreboard objectives add hpww.api.bind_spell.page dummy
scoreboard objectives add hpww.api.bind_spell.slot dummy






