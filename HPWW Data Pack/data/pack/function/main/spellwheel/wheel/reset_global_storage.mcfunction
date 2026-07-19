data remove storage pdb:main in
data remove storage pdb:main out
data remove storage pdb:main players
data remove storage pdb:main args
data remove storage pdb:main temp
data remove storage mcfentitymap:maps hpww_pdb
data remove storage mcfentitymap:maps hpww_spell_trails
execute as @a run function pack:main/spellwheel/wheel/reset_player_data

scoreboard players set @a Joined 0

execute as @a[scores={SettingsMenuStatus=1}] run function pack:main/field_guide/gui/close
