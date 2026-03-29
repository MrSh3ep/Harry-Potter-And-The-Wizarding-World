execute as @a[scores={SpellWheelStatus=1}] at @s anchored eyes positioned ^ ^ ^ run function #bs.raycast:run {with:{blocks:true,entities:true,max_distance:25,on_targeted_entity:"function pack:main/spells/function/target/entity_hit",on_targeted_block:"",blocks:"#minecraft:solid"}}

execute as @e unless score @s targeted_entity_raycast matches 0 run scoreboard players remove @s targeted_entity_raycast 1
execute as @e[scores={targeted_entity_raycast=1..}] at @s if score @s highlight_team_id matches 1.. run function pack:main/spells/function/target/show_team_highlight
