data remove storage pdb:main in
data remove storage pdb:main out
data remove storage pdb:main players
data remove storage pdb:main args
data remove storage pdb:main temp
execute as @a run function pack:main/spellwheel/wheel/reset_player_data

scoreboard players set @a Joined 0