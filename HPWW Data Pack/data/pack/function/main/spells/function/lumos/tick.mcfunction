
#Subtract Score Cooldown
execute unless score @s lumos_cooldown matches 0 run scoreboard players remove @s lumos_cooldown 1


    # Copy cooldown into cooldown_seconds
    scoreboard players operation @s lumos_cooldown_visual = @s lumos_cooldown

    # Divide by 20
    scoreboard players operation @s lumos_cooldown_visual /= @s tick_const


execute as @a[scores={lumos_activated=1}] at @s run function pack:main/spells/function/lumos/create_light

#sets the icons to change
execute if items entity @s weapon.mainhand structure_block if score @s lumos_cooldown matches 2.. run function pack:main/spells/function/lumos/set_icons/start
execute if items entity @s weapon.offhand structure_block if score @s lumos_cooldown matches 2.. run function pack:main/spells/function/lumos/set_icons/start

execute if score @s SpellWheelStatus matches 1 run function pack:main/spells/function/lumos/set_icons/start
