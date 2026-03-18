#ran from left click main

execute if score @s lumos_activated matches 1 run return run function pack:main/spells/function/lumos/lumos_end

tellraw @s "No Action. (No Activated Spell!)"