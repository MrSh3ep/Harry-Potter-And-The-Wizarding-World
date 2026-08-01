execute as @a[scores={SpellWheelStatus=1}] run function hpww:main/spellwheel/wheel/function/close_wheel

data remove storage pdb:main in
data remove storage pdb:main out
data remove storage pdb:main players
data remove storage pdb:main args
data remove storage pdb:main temp
data remove storage mcfentitymap:maps hpww_pdb
data remove storage mcfentitymap:maps hpww_spell_trails
scoreboard players reset @a
function hpww:reset_player_data


