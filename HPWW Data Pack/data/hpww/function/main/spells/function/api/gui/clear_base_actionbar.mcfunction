data modify storage hpww:gui_api base_actionbar set value []

data remove storage pdb:main out
function pdb:get_me_cached
data modify storage pdb:main in set from storage pdb:main out
data modify storage pdb:main in.gui_api.base_actionbar set value []
function pdb:save_me
