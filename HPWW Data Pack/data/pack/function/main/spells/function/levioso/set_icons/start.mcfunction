# 0 = active, 1 = selected, 2..11 = cooldown stages.
execute if score @s levioso_selected_flash matches 1.. run scoreboard players set @s levioso_icon_state 1
execute if score @s levioso_selected_flash matches 1.. run scoreboard players set @s levioso_icon_update_queue 1

execute if score @s levioso_selected_flash matches 0 if score @s levioso_cooldown matches 0 run scoreboard players set @s levioso_icon_state 0
execute if score @s levioso_selected_flash matches 0 if score @s levioso_cooldown matches 0 run scoreboard players set @s levioso_icon_update_queue 1

execute if score @s levioso_selected_flash matches 0 if score @s levioso_cooldown matches 161..180 run scoreboard players set @s levioso_icon_state 2
execute if score @s levioso_selected_flash matches 0 if score @s levioso_cooldown matches 161..180 run scoreboard players set @s levioso_icon_update_queue 1

execute if score @s levioso_selected_flash matches 0 if score @s levioso_cooldown matches 141..160 run scoreboard players set @s levioso_icon_state 3
execute if score @s levioso_selected_flash matches 0 if score @s levioso_cooldown matches 141..160 run scoreboard players set @s levioso_icon_update_queue 1

execute if score @s levioso_selected_flash matches 0 if score @s levioso_cooldown matches 121..140 run scoreboard players set @s levioso_icon_state 4
execute if score @s levioso_selected_flash matches 0 if score @s levioso_cooldown matches 121..140 run scoreboard players set @s levioso_icon_update_queue 1

execute if score @s levioso_selected_flash matches 0 if score @s levioso_cooldown matches 101..120 run scoreboard players set @s levioso_icon_state 5
execute if score @s levioso_selected_flash matches 0 if score @s levioso_cooldown matches 101..120 run scoreboard players set @s levioso_icon_update_queue 1

execute if score @s levioso_selected_flash matches 0 if score @s levioso_cooldown matches 81..100 run scoreboard players set @s levioso_icon_state 6
execute if score @s levioso_selected_flash matches 0 if score @s levioso_cooldown matches 81..100 run scoreboard players set @s levioso_icon_update_queue 1

execute if score @s levioso_selected_flash matches 0 if score @s levioso_cooldown matches 61..80 run scoreboard players set @s levioso_icon_state 7
execute if score @s levioso_selected_flash matches 0 if score @s levioso_cooldown matches 61..80 run scoreboard players set @s levioso_icon_update_queue 1

execute if score @s levioso_selected_flash matches 0 if score @s levioso_cooldown matches 41..60 run scoreboard players set @s levioso_icon_state 8
execute if score @s levioso_selected_flash matches 0 if score @s levioso_cooldown matches 41..60 run scoreboard players set @s levioso_icon_update_queue 1

execute if score @s levioso_selected_flash matches 0 if score @s levioso_cooldown matches 21..40 run scoreboard players set @s levioso_icon_state 9
execute if score @s levioso_selected_flash matches 0 if score @s levioso_cooldown matches 21..40 run scoreboard players set @s levioso_icon_update_queue 1

execute if score @s levioso_selected_flash matches 0 if score @s levioso_cooldown matches 1..20 run scoreboard players set @s levioso_icon_state 10
execute if score @s levioso_selected_flash matches 0 if score @s levioso_cooldown matches 1..20 run scoreboard players set @s levioso_icon_update_queue 1


