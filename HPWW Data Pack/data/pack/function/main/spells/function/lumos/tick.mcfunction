
#Subtract Score Cooldown
execute unless score @s lumos_cooldown matches 0 run scoreboard players remove @s lumos_cooldown 1


    # Copy cooldown into cooldown_seconds
    scoreboard players operation @s lumos_cooldown_visual = @s lumos_cooldown

    # Divide by 20
    scoreboard players operation @s lumos_cooldown_visual /= @s tick_const


execute if score @s lumos_activated matches 1 at @s run function pack:main/spells/function/lumos/create_light

# Queue icon refreshes only when the state actually changes.
execute if score @s lumos_icon_state matches -1 run function pack:main/spells/function/lumos/set_icons/start
execute if score @s lumos_cooldown matches 80 run function pack:main/spells/function/lumos/set_icons/start
execute if score @s lumos_cooldown matches 60 run function pack:main/spells/function/lumos/set_icons/start
execute if score @s lumos_cooldown matches 40 run function pack:main/spells/function/lumos/set_icons/start
execute if score @s lumos_cooldown matches 20 run function pack:main/spells/function/lumos/set_icons/start
execute if score @s lumos_activated matches 0 if score @s lumos_cooldown matches 0 unless score @s lumos_icon_state matches 0 run function pack:main/spells/function/lumos/set_icons/start

execute if score @s lumos_icon_update_queue matches 1.. run function pack:main/spells/function/lumos/set_icons/flush_queue
