data remove storage pdb:main out
data remove storage pdb:main out.give_item_components
function pdb:get_me
data modify storage pdb:main out.give_item_components set from storage pdb:main out.preset.3
data modify storage pdb:main out.give_item_components.components."minecraft:item_model" set from storage pdb:main out.selected_item.components."minecraft:item_model"

data modify storage pdb:main out.give_item_components.components."minecraft:custom_data" merge from storage pdb:main out.selected_item.components."minecraft:custom_data"

function pack:main/spellwheel/wheel/function/give_wands/h3/give with storage pdb:main out.give_item_components

