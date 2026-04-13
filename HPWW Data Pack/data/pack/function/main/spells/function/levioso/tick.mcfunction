# Hold the selected icon through the next wheel redraw before swapping to cooldown art.
execute unless score @s levioso_selected_flash matches 1.. unless score @s levioso_cooldown matches 0 run scoreboard players remove @s levioso_cooldown 1

execute unless score @s levioso_selected_flash matches 1.. run scoreboard players operation @s levioso_cooldown_visual = @s levioso_cooldown
execute unless score @s levioso_selected_flash matches 1.. run scoreboard players operation @s levioso_cooldown_visual /= @s tick_const

execute unless score @s levioso_selected_flash matches 1.. if score @s levioso_icon_state matches -1 run function pack:main/spells/function/levioso/set_icons/start
execute unless score @s levioso_selected_flash matches 1.. if score @s levioso_cooldown matches 0 unless score @s levioso_icon_state matches 0 run function pack:main/spells/function/levioso/set_icons/start
execute unless score @s levioso_selected_flash matches 1.. if score @s levioso_cooldown matches 161..180 unless score @s levioso_icon_state matches 2 run function pack:main/spells/function/levioso/set_icons/start
execute unless score @s levioso_selected_flash matches 1.. if score @s levioso_cooldown matches 141..160 unless score @s levioso_icon_state matches 3 run function pack:main/spells/function/levioso/set_icons/start
execute unless score @s levioso_selected_flash matches 1.. if score @s levioso_cooldown matches 121..140 unless score @s levioso_icon_state matches 4 run function pack:main/spells/function/levioso/set_icons/start
execute unless score @s levioso_selected_flash matches 1.. if score @s levioso_cooldown matches 101..120 unless score @s levioso_icon_state matches 5 run function pack:main/spells/function/levioso/set_icons/start
execute unless score @s levioso_selected_flash matches 1.. if score @s levioso_cooldown matches 81..100 unless score @s levioso_icon_state matches 6 run function pack:main/spells/function/levioso/set_icons/start
execute unless score @s levioso_selected_flash matches 1.. if score @s levioso_cooldown matches 61..80 unless score @s levioso_icon_state matches 7 run function pack:main/spells/function/levioso/set_icons/start
execute unless score @s levioso_selected_flash matches 1.. if score @s levioso_cooldown matches 41..60 unless score @s levioso_icon_state matches 8 run function pack:main/spells/function/levioso/set_icons/start
execute unless score @s levioso_selected_flash matches 1.. if score @s levioso_cooldown matches 21..40 unless score @s levioso_icon_state matches 9 run function pack:main/spells/function/levioso/set_icons/start
execute unless score @s levioso_selected_flash matches 1.. if score @s levioso_cooldown matches 1..20 unless score @s levioso_icon_state matches 10 run function pack:main/spells/function/levioso/set_icons/start


execute if score @s levioso_icon_update_queue matches 1.. run function pack:main/spells/function/levioso/set_icons/flush_queue
execute if score @s levioso_selected_flash matches 1.. run scoreboard players remove @s levioso_selected_flash 1
