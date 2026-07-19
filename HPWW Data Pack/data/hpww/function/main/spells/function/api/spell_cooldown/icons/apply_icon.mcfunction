$data modify storage hpww:cooldown_api icon set value {spell:"$(spell)",key_path:"$(key_path)"}

data remove storage pdb:main in
data remove storage pdb:main out
function pdb:get_me
data modify storage pdb:main in set from storage pdb:main out

function hpww:main/spells/function/api/spell_cooldown/icons/apply_icon_to_storage with storage hpww:cooldown_api icon

function pdb:save_me
function hpww:main/spellwheel/wheel/function/cache/queue_refresh
