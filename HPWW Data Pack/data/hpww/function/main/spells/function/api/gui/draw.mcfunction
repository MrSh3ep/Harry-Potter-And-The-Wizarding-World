execute if score @s SpellWheelStatus matches 1 unless data storage hpww:gui_api spell_wheel_draw_context unless data storage hpww:gui_api refresh_base_only run function hpww:main/spells/function/api/gui/refresh_spell_wheel_base

data modify storage hpww:gui_api base_actionbar set value []
data remove storage pdb:main out
function pdb:get_me_cached
execute if data storage pdb:main out.gui_api.base_actionbar run data modify storage hpww:gui_api base_actionbar set from storage pdb:main out.gui_api.base_actionbar

data modify storage hpww:gui_api merged_actionbar set value []
execute if data storage hpww:gui_api base_actionbar[0] run data modify storage hpww:gui_api merged_actionbar append from storage hpww:gui_api base_actionbar[]
execute if data storage hpww:gui_api gui_actionbar[0] run data modify storage hpww:gui_api merged_actionbar append from storage hpww:gui_api gui_actionbar[]

title @s actionbar [{"nbt":"merged_actionbar[]","storage":"hpww:gui_api","interpret":true,"separator":{"text":""}}]
