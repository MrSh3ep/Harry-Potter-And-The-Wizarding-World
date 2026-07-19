execute if data storage hpww:gui_api refresh_base_only run return 1
data modify storage hpww:gui_api spell_wheel_draw_context set value 1b
function hpww:main/spells/function/api/gui/begin
function hpww:main/spells/function/api/gui/draw
data remove storage hpww:gui_api spell_wheel_draw_context
