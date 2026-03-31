
execute if score @s right_click_timer matches 0 run scoreboard players set @s right_click_timer 7

execute unless score @s right_click_advancement_cooldown matches 1.. anchored eyes run scoreboard players add @s right_click_count 1

advancement revoke @s only pack:pages/page_wands_rc
advancement revoke @s only pack:pages/rc_cooldown
scoreboard players set @s right_click_advancement_cooldown 2



