# Bounce trail entities when their trail point touches a non-passable block.
execute store result score #current spell_trail_schedule run time query gametime
execute as @e[type=armor_stand,tag=spell_trail] at @s unless score @s spell_trail_schedule matches -2147483648..2147483647 run function hpww:main/spells/function/api/spell_trails/private/function_loop
execute as @e[type=armor_stand,tag=spell_trail] at @s if score @s spell_trail_life_ticks matches 1.. if score @s spell_trail_schedule <= #current spell_trail_schedule run function hpww:main/spells/function/api/spell_trails/private/function_loop
execute as @e[type=armor_stand,tag=spell_trail] at @s if score @s spell_trail_life_ticks matches ..0 run function hpww:main/spells/function/api/spell_trails/private/kill_trail

scoreboard players add #cleanup_timer spell_trail_schedule 1
execute if score #cleanup_timer spell_trail_schedule matches 20.. run function hpww:main/spells/function/api/spell_trails/private/cleanup_orphan_particle_anchors
execute if score #cleanup_timer spell_trail_schedule matches 20.. run scoreboard players set #cleanup_timer spell_trail_schedule 0
