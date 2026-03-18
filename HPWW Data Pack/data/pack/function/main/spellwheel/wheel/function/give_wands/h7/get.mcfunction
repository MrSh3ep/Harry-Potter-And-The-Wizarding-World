data remove storage pdb:main out
data remove storage pdb:main out.give_item_components
function pdb:get_me
data modify storage pdb:main out.give_item_components set from storage pdb:main out.preset.7

function pack:main/spellwheel/wheel/function/give_wands/h7/give with storage pdb:main out.give_item_components

