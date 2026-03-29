

execute as @s if score @s SpellWheelStatus matches 0 run return run function pack:main/spellwheel/main_wand/left_click
# for the main wand left clikc stuff ^


execute if score @s left_click_timer matches 0 run scoreboard players set @s left_click_timer 6

execute unless score @s left_click_advancement_cooldown matches 1.. anchored eyes run scoreboard players add @s left_click_count 1

advancement revoke @s only pack:pages/lc_cooldown
scoreboard players set @s left_click_advancement_cooldown 2



