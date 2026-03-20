
#Subtract Score Cooldown
execute unless score @s lumos_cooldown matches 0 run scoreboard players remove @s lumos_cooldown 1


    # Copy cooldown into cooldown_seconds
    scoreboard players operation @s lumos_cooldown_visual = @s lumos_cooldown

    # Divide by 20
    scoreboard players operation @s lumos_cooldown_visual /= @s tick_const

# Runs The Actuall function
execute at @s as @s if score @s lumos_activated matches 1 run function pack:main/spells/function/lumos/fill_air



# This activates the cooldown update. Other updates are in lumos_function.
execute if score @s lumos_cooldown matches 1.. if score @s SpellWheelStatus matches 1 run function pack:main/spells/store_player_spell_slot_data/lumos/update_main_keys