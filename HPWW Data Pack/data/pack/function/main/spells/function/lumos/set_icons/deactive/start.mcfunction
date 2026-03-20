function pdb:get_me

execute if score @s lumos_cooldown matches 81..100 run function pack:main/spells/function/lumos/set_icons/deactive/var_0 with storage pdb:main out.SelectedPage_icon

execute if score @s lumos_cooldown matches 61..80 run function pack:main/spells/function/lumos/set_icons/deactive/var_1 with storage pdb:main out.SelectedPage_icon

execute if score @s lumos_cooldown matches 41..60 run function pack:main/spells/function/lumos/set_icons/deactive/var_2 with storage pdb:main out.SelectedPage_icon

execute if score @s lumos_cooldown matches 21..40 run function pack:main/spells/function/lumos/set_icons/deactive/var_3 with storage pdb:main out.SelectedPage_icon

execute if score @s lumos_cooldown matches 1..20 run function pack:main/spells/function/lumos/set_icons/deactive/var_4 with storage pdb:main out.SelectedPage_icon

execute if score @s lumos_cooldown matches 0 run function pack:main/spells/function/lumos/set_icons/deactive/var_5 with storage pdb:main out.SelectedPage_icon