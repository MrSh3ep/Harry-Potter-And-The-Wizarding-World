# Oak
execute as @e[type=armor_stand, tag=wand_crafting_table_detector] at @s run execute if entity @e[type=item, distance=..0.5, nbt={Item:{id:"minecraft:stripped_oak_wood"}}] run scoreboard players set @s oak_log 1
execute as @e[type=armor_stand, tag=wand_crafting_table_detector] at @s run execute unless entity @e[type=item, distance=..0.5, nbt={Item:{id:"minecraft:stripped_oak_wood"}}] run scoreboard players set @s oak_log 0

execute as @e[type=armor_stand, tag=wand_crafting_table_detector, scores={oak_log=1, phoenix_feather=1}] at @s run function pack:main/wand_crafting/detect/function/oak/phoenix_feather
execute as @e[type=armor_stand, tag=wand_crafting_table_detector, scores={oak_log=1,unicorn_hair=1}] at @s run function pack:main/wand_crafting/detect/function/oak/unicorn_hair
execute as @e[type=armor_stand, tag=wand_crafting_table_detector, scores={oak_log=1, dragon_heartstring=1}] at @s run function pack:main/wand_crafting/detect/function/oak/dragon_heartstring


# Spruce
execute as @e[type=armor_stand, tag=wand_crafting_table_detector] at @s run execute if entity @e[type=item, distance=..0.5, nbt={Item:{id:"minecraft:stripped_spruce_wood"}}] run scoreboard players set @s spruce_log 1
execute as @e[type=armor_stand, tag=wand_crafting_table_detector] at @s run execute unless entity @e[type=item, distance=..0.5, nbt={Item:{id:"minecraft:stripped_spruce_wood"}}] run scoreboard players set @s spruce_log 0

execute as @e[type=armor_stand, tag=wand_crafting_table_detector, scores={spruce_log=1, phoenix_feather=1}] at @s run function pack:main/wand_crafting/detect/function/spruce/phoenix_feather
execute as @e[type=armor_stand, tag=wand_crafting_table_detector, scores={spruce_log=1,unicorn_hair=1}] at @s run function pack:main/wand_crafting/detect/function/spruce/unicorn_hair
execute as @e[type=armor_stand, tag=wand_crafting_table_detector, scores={spruce_log=1, dragon_heartstring=1}] at @s run function pack:main/wand_crafting/detect/function/spruce/dragon_heartstring

# Dark Oak
execute as @e[type=armor_stand, tag=wand_crafting_table_detector] at @s run execute if entity @e[type=item, distance=..0.5, nbt={Item:{id:"minecraft:stripped_dark_oak_wood"}}] run scoreboard players set @s dark_oak_log 1
execute as @e[type=armor_stand, tag=wand_crafting_table_detector] at @s run execute unless entity @e[type=item, distance=..0.5, nbt={Item:{id:"minecraft:stripped_dark_oak_wood"}}] run scoreboard players set @s dark_oak_log 0

execute as @e[type=armor_stand, tag=wand_crafting_table_detector, scores={dark_oak_log=1, phoenix_feather=1}] at @s run function pack:main/wand_crafting/detect/function/dark_oak/phoenix_feather
execute as @e[type=armor_stand, tag=wand_crafting_table_detector, scores={dark_oak_log=1,unicorn_hair=1}] at @s run function pack:main/wand_crafting/detect/function/dark_oak/unicorn_hair
execute as @e[type=armor_stand, tag=wand_crafting_table_detector, scores={dark_oak_log=1, dragon_heartstring=1}] at @s run function pack:main/wand_crafting/detect/function/dark_oak/dragon_heartstring

#Birch
execute as @e[type=armor_stand, tag=wand_crafting_table_detector] at @s run execute if entity @e[type=item, distance=..0.5, nbt={Item:{id:"minecraft:stripped_birch_wood"}}] run scoreboard players set @s birch_log 1
execute as @e[type=armor_stand, tag=wand_crafting_table_detector] at @s run execute unless entity @e[type=item, distance=..0.5, nbt={Item:{id:"minecraft:stripped_birch_wood"}}] run scoreboard players set @s birch_log 0

execute as @e[type=armor_stand, tag=wand_crafting_table_detector, scores={birch_log=1, phoenix_feather=1}] at @s run function pack:main/wand_crafting/detect/function/birch/phoenix_feather
execute as @e[type=armor_stand, tag=wand_crafting_table_detector, scores={birch_log=1,unicorn_hair=1}] at @s run function pack:main/wand_crafting/detect/function/birch/unicorn_hair
execute as @e[type=armor_stand, tag=wand_crafting_table_detector, scores={birch_log=1, dragon_heartstring=1}] at @s run function pack:main/wand_crafting/detect/function/birch/dragon_heartstring

#Acacia
execute as @e[type=armor_stand, tag=wand_crafting_table_detector] at @s run execute if entity @e[type=item, distance=..0.5, nbt={Item:{id:"minecraft:stripped_acacia_wood"}}] run scoreboard players set @s acacia_log 1
execute as @e[type=armor_stand, tag=wand_crafting_table_detector] at @s run execute unless entity @e[type=item, distance=..0.5, nbt={Item:{id:"minecraft:stripped_acacia_wood"}}] run scoreboard players set @s acacia_log 0

execute as @e[type=armor_stand, tag=wand_crafting_table_detector, scores={acacia_log=1, phoenix_feather=1}] at @s run function pack:main/wand_crafting/detect/function/acacia/phoenix_feather
execute as @e[type=armor_stand, tag=wand_crafting_table_detector, scores={acacia_log=1,unicorn_hair=1}] at @s run function pack:main/wand_crafting/detect/function/acacia/unicorn_hair
execute as @e[type=armor_stand, tag=wand_crafting_table_detector, scores={acacia_log=1, dragon_heartstring=1}] at @s run function pack:main/wand_crafting/detect/function/acacia/dragon_heartstring

# Jungle
execute as @e[type=armor_stand, tag=wand_crafting_table_detector] at @s run execute if entity @e[type=item, distance=..0.5, nbt={Item:{id:"minecraft:stripped_jungle_wood"}}] run scoreboard players set @s jungle_log 1
execute as @e[type=armor_stand, tag=wand_crafting_table_detector] at @s run execute unless entity @e[type=item, distance=..0.5, nbt={Item:{id:"minecraft:stripped_jungle_wood"}}] run scoreboard players set @s jungle_log 0

execute as @e[type=armor_stand, tag=wand_crafting_table_detector, scores={jungle_log=1, phoenix_feather=1}] at @s run function pack:main/wand_crafting/detect/function/jungle/phoenix_feather
execute as @e[type=armor_stand, tag=wand_crafting_table_detector, scores={jungle_log=1,unicorn_hair=1}] at @s run function pack:main/wand_crafting/detect/function/jungle/unicorn_hair
execute as @e[type=armor_stand, tag=wand_crafting_table_detector, scores={jungle_log=1, dragon_heartstring=1}] at @s run function pack:main/wand_crafting/detect/function/jungle/dragon_heartstring

# Mangrove
execute as @e[type=armor_stand, tag=wand_crafting_table_detector] at @s run execute if entity @e[type=item, distance=..0.5, nbt={Item:{id:"minecraft:stripped_mangrove_wood"}}] run scoreboard players set @s mangrove_log 1
execute as @e[type=armor_stand, tag=wand_crafting_table_detector] at @s run execute unless entity @e[type=item, distance=..0.5, nbt={Item:{id:"minecraft:stripped_mangrove_wood"}}] run scoreboard players set @s mangrove_log 0

execute as @e[type=armor_stand, tag=wand_crafting_table_detector, scores={mangrove_log=1, phoenix_feather=1}] at @s run function pack:main/wand_crafting/detect/function/mangrove/phoenix_feather
execute as @e[type=armor_stand, tag=wand_crafting_table_detector, scores={mangrove_log=1,unicorn_hair=1}] at @s run function pack:main/wand_crafting/detect/function/mangrove/unicorn_hair
execute as @e[type=armor_stand, tag=wand_crafting_table_detector, scores={mangrove_log=1, dragon_heartstring=1}] at @s run function pack:main/wand_crafting/detect/function/mangrove/dragon_heartstring

#Cherry
execute as @e[type=armor_stand, tag=wand_crafting_table_detector] at @s run execute if entity @e[type=item, distance=..0.5, nbt={Item:{id:"minecraft:stripped_cherry_wood"}}] run scoreboard players set @s cherry_log 1
execute as @e[type=armor_stand, tag=wand_crafting_table_detector] at @s run execute unless entity @e[type=item, distance=..0.5, nbt={Item:{id:"minecraft:stripped_cherry_wood"}}] run scoreboard players set @s cherry_log 0

execute as @e[type=armor_stand, tag=wand_crafting_table_detector, scores={cherry_log=1, phoenix_feather=1}] at @s run function pack:main/wand_crafting/detect/function/cherry/phoenix_feather
execute as @e[type=armor_stand, tag=wand_crafting_table_detector, scores={cherry_log=1,unicorn_hair=1}] at @s run function pack:main/wand_crafting/detect/function/cherry/unicorn_hair
execute as @e[type=armor_stand, tag=wand_crafting_table_detector, scores={cherry_log=1, dragon_heartstring=1}] at @s run function pack:main/wand_crafting/detect/function/cherry/dragon_heartstring

#Pale Oak
execute as @e[type=armor_stand, tag=wand_crafting_table_detector] at @s run execute if entity @e[type=item, distance=..0.5, nbt={Item:{id:"minecraft:stripped_pale_oak_wood"}}] run scoreboard players set @s pale_oak_log 1
execute as @e[type=armor_stand, tag=wand_crafting_table_detector] at @s run execute unless entity @e[type=item, distance=..0.5, nbt={Item:{id:"minecraft:stripped_pale_oak_wood"}}] run scoreboard players set @s pale_oak_log 0

execute as @e[type=armor_stand, tag=wand_crafting_table_detector, scores={pale_oak_log=1, phoenix_feather=1}] at @s run function pack:main/wand_crafting/detect/function/pale_oak/phoenix_feather
execute as @e[type=armor_stand, tag=wand_crafting_table_detector, scores={pale_oak_log=1,unicorn_hair=1}] at @s run function pack:main/wand_crafting/detect/function/pale_oak/unicorn_hair
execute as @e[type=armor_stand, tag=wand_crafting_table_detector, scores={pale_oak_log=1, dragon_heartstring=1}] at @s run function pack:main/wand_crafting/detect/function/pale_oak/dragon_heartstring


# Cores
execute as @e[type=armor_stand, tag=wand_crafting_table_detector] at @s run execute if entity @e[type=item, distance=..0.5, nbt={Item:{id:"minecraft:command_block"}}] run scoreboard players set @s phoenix_feather 1
execute as @e[type=armor_stand, tag=wand_crafting_table_detector] at @s run execute unless entity @e[type=item, distance=..0.5, nbt={Item:{id:"minecraft:command_block"}}] run scoreboard players set @s phoenix_feather 0

execute as @e[type=armor_stand, tag=wand_crafting_table_detector] at @s run execute if entity @e[type=item, distance=..0.5, nbt={Item:{id:"minecraft:repeating_command_block"}}] run scoreboard players set @s dragon_heartstring 1
execute as @e[type=armor_stand, tag=wand_crafting_table_detector] at @s run execute unless entity @e[type=item, distance=..0.5, nbt={Item:{id:"minecraft:repeating_command_block"}}] run scoreboard players set @s dragon_heartstring 0

execute as @e[type=armor_stand, tag=wand_crafting_table_detector] at @s run execute if entity @e[type=item, distance=..0.5, nbt={Item:{id:"minecraft:chain_command_block"}}] run scoreboard players set @s unicorn_hair 1
execute as @e[type=armor_stand, tag=wand_crafting_table_detector] at @s run execute unless entity @e[type=item, distance=..0.5, nbt={Item:{id:"minecraft:chain_command_block"}}] run scoreboard players set @s unicorn_hair 0