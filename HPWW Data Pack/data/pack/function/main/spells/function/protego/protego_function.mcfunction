execute if entity @e[type=armor_stand, tag=protego_blockable, distance=0..3.5] run function pack:main/spells/function/protego/block

effect give @s slowness 1 1 true
particle dust{color:[0.0,0.84,0.9],scale:1} ~ ~1 ~ 1.254 1.254 1.254 1 100 force @a



