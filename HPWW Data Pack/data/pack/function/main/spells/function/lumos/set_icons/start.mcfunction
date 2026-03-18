#ran from lumos tick
function pdb:get_me


# out.SelectedPage_icon saved in main.tick

# Decides Icon
execute if score @s lumos_cooldown matches 0 if score @s lumos_activated matches 0 run function pack:main/spells/function/lumos/set_icons/active with storage pdb:main out.SelectedPage_icon

execute if score @s lumos_cooldown matches 1.. if score @s lumos_activated matches 0 run function pack:main/spells/function/lumos/set_icons/deactive/start with storage pdb:main out.SelectedPage_icon

execute if score @s lumos_activated matches 1 if score @s lumos_cooldown matches 0 run function pack:main/spells/function/lumos/set_icons/selected with storage pdb:main out.SelectedPage_icon
