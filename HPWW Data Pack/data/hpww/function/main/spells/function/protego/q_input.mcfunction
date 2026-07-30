# The server cannot see a physical Q-key release. Treat ten consecutive ticks
# with a restored wheel item as release; repeated drops keep resetting the lock.
execute if items entity @s weapon.mainhand test_instance_block if score @s protego_q_lock matches 1.. run scoreboard players remove @s protego_q_lock 1

# Only the first missing-item tick in a press/hold cycle may activate Protego.
execute unless items entity @s weapon.mainhand test_instance_block if score @s protego_q_lock matches 0 run function hpww:main/spells/function/protego/protego_detect
execute unless items entity @s weapon.mainhand test_instance_block run scoreboard players set @s protego_q_lock 10
