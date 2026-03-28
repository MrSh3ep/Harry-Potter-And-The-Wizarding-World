

tellraw @a ["",{bold:true,text:"",extra:[{color:"#c5a7fd",text:"H"},{color:"#c1a1fb",text:"a"},{color:"#bd9cf9",text:"r"},{color:"#b896f8",text:"r"},{color:"#b491f6",text:"y "},{color:"#ac86f2",text:"P"},{color:"#a880f0",text:"o"},{color:"#a47bee",text:"t"},{color:"#9f75ed",text:"t"},{color:"#9b70eb",text:"e"},{color:"#976ae9",text:"r "},{color:"#9b6ddb",text:"|"}]},{bold:true,text:"",extra:[{color:"#ac7dc2",text:" A"},{color:"#b484b6",text:"n"},{color:"#bd8ca9",text:"d "},{color:"#cd9c91",text:"T"},{color:"#d5a485",text:"h"},{color:"#deac78",text:"e "},{color:"#eebb60",text:"W"},{color:"#f7c353",text:"i"},{color:"#ffcb47",text:"z"},{color:"#ffcc4c",text:"a"},{color:"#ffcd52",text:"r"},{color:"#ffcd57",text:"d"},{color:"#ffce5d",text:"i"},{color:"#ffcf62",text:"n"},{color:"#ffd067",text:"g "},{color:"#ffd172",text:"W"},{color:"#ffd277",text:"o"},{color:"#ffd37d",text:"r"},{color:"#ffd382",text:"l"},{color:"#ffd488",text:"d "}]},{color:"white",text:"has reloaded!\n",extra:[{bold:true,text:"Version"}," -"]},{color:"gold",text:" Beta v0.2a "},{color:"dark_red",text:"(⚠ EXPECT BUGS)\n"},{color:"white",text:"",extra:[{bold:true,text:"Creator"}," - "]},{bold:true,text:"",extra:[{color:"#607451",text:"M"},{color:"#6b7a57",text:"r"},{color:"#767f5c",text:"S"},{color:"#818562",text:"h"},{color:"#8a8663",text:"3"},{color:"#948863",text:"e"},{color:"#9d8964",text:"p"}]},"\n"]

give @s glass[block_entity_data={id:"bed"}]



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
advancement revoke @a only pack:blocks/main_wand/right_click_settings_button
advancement revoke @a only pack:blocks/main_wand/right_click_exit_wheel_button
execute as @s if score @s SpellWheelStatus matches 0 run advancement revoke @a only pack:blocks/main_wand/right_click_main_wand
advancement revoke @a only pack:pages/lc_cooldown
advancement revoke @a only pack:pages/rc_cooldown






    scoreboard objectives add pdb dummy
    scoreboard objectives add new_player_storage dummy
    scoreboard objectives add HasPreset dummy
    scoreboard objectives add SpellWheelStatus dummy
    scoreboard objectives add kill_tile dummy

    #Spell Wheel SFX
    scoreboard objectives add HotbarSound dummy
    scoreboard objectives add SelectedSlot dummy
    scoreboard objectives add SelectedSlot.1 dummy
    
    scoreboard objectives add LastSelectedSlot dummy

    # Settings Menu
    scoreboard objectives add settings_menu_cancel trigger
    scoreboard objectives add settings_menu_bind_spell trigger
    scoreboard objectives add settings_menu_reset_player_data trigger
    scoreboard objectives add settings_menu_button_cooldown dummy
    scoreboard players set @a settings_menu_button_cooldown 0
    scoreboard objectives add settings_bind_encoded dummy
    scoreboard objectives add settings_bind_spell dummy
    scoreboard objectives add settings_bind_page dummy
    scoreboard objectives add settings_bind_slot dummy
    scoreboard objectives add settings_bind_const dummy
    scoreboard players set #100 settings_bind_const 100
    scoreboard players set #10000 settings_bind_const 10000


    recipe give @a pack:dragon_heartstring
    recipe give @a pack:unicorn_hair
    recipe give @a pack:phoenix_feather
    recipe give @a pack:wand_crafting_table
    advancement revoke @a only pack:blocks/main_wand/right_click_settings_button


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

        scoreboard objectives add number_0 dummy
        scoreboard players set #fake_player_zero_number number_0 0




    

#Spell Visuals
    scoreboard objectives add protego_spell_wheel_value dummy
    scoreboard players set @a protego_spell_wheel_value 4
    
    


#Font load
# Create scoreboard and intiialize values:
scoreboard objectives add spacefont dummy
scoreboard players set #-1 spacefont -1

# Spells
#ALL SPELLS MUST HAVE THIS FORMAT __ ex : {Spell:"Blank", Current_Key:"", Keys:{Active:"\uE101", Deactive:"\uE101",}
    #Blank
    data modify storage pack:gobal_spell_data blank set value {Spell:"blank", Current_Key:"E101", Keys:{Active:"E101", Deactive:"E101",}}

    #Protego
        scoreboard objectives add protego_cooldown dummy
        scoreboard players set @a protego_cooldown 1
        scoreboard objectives add protego_cooldown_visual dummy
        scoreboard players set @a protego_cooldown_visual 1
        scoreboard objectives add protego_activated dummy
        scoreboard players set @a protego_activated 0
        scoreboard objectives add protego_block_timer dummy
        scoreboard players set @a protego_block_timer 0

        

        # Store constant 20 (run once during setup, not every tick)
        scoreboard objectives add tick_const dummy
        scoreboard players set @a tick_const 20

    #Lumos
        data modify storage pack:gobal_spell_data lumos set value {Spell:"lumos", Current_Key:"A551", Keys:{Active:"A551", Deactive: {D_0:"B550", D_1:"B551", D_2:"B552", D_3:"B553", D_4:"B554", D_5:"B555"}, Selected:"C551"}}

        scoreboard objectives add lumos_cooldown dummy
        scoreboard players set @a lumos_cooldown 10
        scoreboard objectives add lumos_cooldown_visual dummy
        scoreboard players set @a lumos_cooldown_visual 10
        scoreboard objectives add lumos_activated dummy
        scoreboard players set @a lumos_activated 0


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
scoreboard players set @a basic_cast_icon_varient 0

scoreboard objectives add basic_cast_icon_varient dummy

scoreboard objectives add spell_uuid_0 dummy
scoreboard players set @a spell_uuid_0 0
scoreboard objectives add spell_uuid_1 dummy
scoreboard players set @a spell_uuid_1 0
scoreboard objectives add spell_uuid_2 dummy
scoreboard players set @a spell_uuid_2 0
scoreboard objectives add spell_uuid_3 dummy
scoreboard players set @a spell_uuid_3 0

execute as @a run function animated_java:protego/remove/entities

#Target Entity Detection
scoreboard objectives add targeted_entity_raycast dummy
scoreboard players set @a targeted_entity_raycast 0

