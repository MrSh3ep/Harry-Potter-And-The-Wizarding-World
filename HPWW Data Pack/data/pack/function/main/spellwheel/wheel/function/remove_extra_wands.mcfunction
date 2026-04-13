kill @e[type=item, nbt={Item:{components:{"minecraft:custom_data":{cannot_be_dropped:1b}}}}]
execute as @a[scores={SpellWheelStatus=0}] run clear @s test_instance_block[custom_data~{"type":"spell_wheel_page"}]
