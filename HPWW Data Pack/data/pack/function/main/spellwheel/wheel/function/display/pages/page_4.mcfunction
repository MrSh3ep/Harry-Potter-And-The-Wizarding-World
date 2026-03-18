#called from start in display folder



# 1. Load player data
    data remove storage pdb:main in
    data remove storage pdb:main out
    function pdb:get_me
    data modify storage pdb:main in set from storage pdb:main out


#Add What u need to save down below!! :}
#-----------------------------
#All pages
    execute store result storage pdb:main in.spell_wheel_draw.page_4.selected_page_number int 1 run scoreboard players get @s SelectedSlot

    execute store result storage pdb:main in.spell_wheel_draw.page_4.protego_value int 1 run scoreboard players get @s protego_spell_wheel_value

#page 1



#split functions bc they are saving the true/false values maybe..
    #slot 1
    
     data modify storage pdb:main in.spell_wheel_draw.page_4.slot_1 set from storage pdb:main in.spell_wheel_data.spells.page_4.slot_1.Current_Key

     data modify storage pdb:main in.spell_wheel_draw.page_4.slot_2 set from storage pdb:main in.spell_wheel_data.spells.page_4.slot_2.Current_Key

     data modify storage pdb:main in.spell_wheel_draw.page_4.slot_3 set from storage pdb:main in.spell_wheel_data.spells.page_4.slot_3.Current_Key

     data modify storage pdb:main in.spell_wheel_draw.page_4.slot_4 set from storage pdb:main in.spell_wheel_data.spells.page_4.slot_4.Current_Key

    #save name for left and right clikc macro to run a function in that slot :D
     data modify storage pdb:main in.spell_wheel_draw_data.slot_1 set from storage pdb:main in.spell_wheel_data.spells.page_4.slot_1.Spell
    
     data modify storage pdb:main in.spell_wheel_draw_data.slot_2 set from storage pdb:main in.spell_wheel_data.spells.page_4.slot_2.Spell

     data modify storage pdb:main in.spell_wheel_draw_data.slot_3 set from storage pdb:main in.spell_wheel_data.spells.page_4.slot_3.Spell

     data modify storage pdb:main in.spell_wheel_draw_data.slot_4 set from storage pdb:main in.spell_wheel_data.spells.page_4.slot_4.Spell
    

#-----------------------------
 function pdb:save_me
 function pdb:get_me
function pack:main/spellwheel/wheel/function/display/draw with storage pdb:main out.spell_wheel_draw.page_4
