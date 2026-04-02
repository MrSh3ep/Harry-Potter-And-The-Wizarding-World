# Wand Crafting Table
    execute as @e[ tag=pack.custom_block, type=item_display,] at @s run function pack:main/block/as_blocks
    function pack:main/wand_crafting/detect/function/cores_and_wood



#Spell Wheel SFX
    execute as @a[scores={SpellWheelStatus=1}] at @s run function pack:main/spellwheel/wheel/function/sfx/change_page

# Cache each player's UUID so spells can keep track of who cast them.
    execute as @a run function pack:main/spells/function/other/store_uuid

#protego
    execute as @a[scores={SpellWheelStatus=1}] at @s unless items entity @s weapon.mainhand test_instance_block run function pack:main/spells/function/protego/protego_detect
    execute as @a as @s at @s run function pack:main/spells/function/protego/tick

#Drop Prevention
    function pack:main/spellwheel/wheel/function/drop/replace_macro
    execute as @a at @s run function pack:main/spellwheel/wheel/function/remove_extra_wands

#Refresh cached page data only when it has been dirtied.
    execute as @a[scores={SpellWheelStatus=1,spell_wheel_cache_dirty=1..}] run function pack:main/spellwheel/wheel/function/cache/refresh_if_dirty

#Draw Spellwheel
    execute as @a[scores={SpellWheelStatus=1}] run function pack:main/spellwheel/wheel/function/display/start

# Spell Wheel Settings triggers
execute as @a[scores={settings_menu_bind_spell=1..}] run function pack:main/spellwheel/wheel/function/settings_menu/bind_spell
execute as @a[scores={settings_menu_cancel=1..}] run function pack:main/spellwheel/wheel/function/settings_menu/cancel
execute as @a[scores={settings_menu_reset_player_data=1..}] run function pack:main/spellwheel/wheel/function/settings_menu/reset_player_data
execute as @a[scores={settings_menu_button_cooldown=1..}] run function pack:main/spellwheel/wheel/function/settings_menu/settings_cooldown





#right click detection spell wheel
execute as @a at @a run function pack:main/spellwheel/wheel/function/pages/right_click/detect/rc_tick

#left click detection spell wheel
execute as @a at @a run function pack:main/spellwheel/wheel/function/pages/left_click/detect/lc_tick


#Spell Values
    #Protego
    execute as @a unless score @s protego_cooldown matches 0 run scoreboard players set @s protego_spell_wheel_value 5
    execute as @a if score @s protego_cooldown matches 0 run scoreboard players set @s protego_spell_wheel_value 4

    #

#lumos
execute as @a run function pack:main/spells/function/lumos/tick

#left click tick for display etc
execute as @a run function pack:main/spellwheel/main_wand/tick

#Join Detection
execute as @a unless score @s Joined matches 1.. run tag @s add new_player
execute as @a[tag=new_player] run function pack:first_join


execute as @a if score @s SpellWheelStatus matches 1 run function pack:main/spells/function/other/selected_page_save

execute as @a run execute store result score @s SelectedSlot run data get entity @s SelectedItemSlot

#basic cast
execute as @a as @s run function pack:main/spells/function/basic_cast/tick

execute as @a if score @s SpellWheelStatus matches 1 run function pack:main/spellwheel/wheel/function/inventory_wand_prevention

function pack:main/spells/function/target/tick


