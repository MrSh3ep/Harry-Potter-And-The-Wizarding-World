# Queue a full Lumos refresh from the current spell state.
# 0 = active, 1 = selected, 2..6 = cooldown stages.
execute if score @s lumos_activated matches 1 run scoreboard players set @s lumos_icon_state 1
execute if score @s lumos_activated matches 1 run scoreboard players set @s lumos_icon_update_queue 1

execute if score @s lumos_activated matches 0 if score @s lumos_cooldown matches 0 run scoreboard players set @s lumos_icon_state 0
execute if score @s lumos_activated matches 0 if score @s lumos_cooldown matches 0 run scoreboard players set @s lumos_icon_update_queue 1

execute if score @s lumos_activated matches 0 if score @s lumos_cooldown matches 81..100 run scoreboard players set @s lumos_icon_state 2
execute if score @s lumos_activated matches 0 if score @s lumos_cooldown matches 81..100 run scoreboard players set @s lumos_icon_update_queue 1

execute if score @s lumos_activated matches 0 if score @s lumos_cooldown matches 61..80 run scoreboard players set @s lumos_icon_state 3
execute if score @s lumos_activated matches 0 if score @s lumos_cooldown matches 61..80 run scoreboard players set @s lumos_icon_update_queue 1

execute if score @s lumos_activated matches 0 if score @s lumos_cooldown matches 41..60 run scoreboard players set @s lumos_icon_state 4
execute if score @s lumos_activated matches 0 if score @s lumos_cooldown matches 41..60 run scoreboard players set @s lumos_icon_update_queue 1

execute if score @s lumos_activated matches 0 if score @s lumos_cooldown matches 21..40 run scoreboard players set @s lumos_icon_state 5
execute if score @s lumos_activated matches 0 if score @s lumos_cooldown matches 21..40 run scoreboard players set @s lumos_icon_update_queue 1

execute if score @s lumos_activated matches 0 if score @s lumos_cooldown matches 1..20 run scoreboard players set @s lumos_icon_state 6
execute if score @s lumos_activated matches 0 if score @s lumos_cooldown matches 1..20 run scoreboard players set @s lumos_icon_update_queue 1
