execute if data storage pack:gui_api refresh_base_only run return 1
data modify storage pack:gui_api spell_wheel_draw_context set value 1b
function pack:main/spells/function/api/gui/begin
function pack:main/spells/function/api/gui/draw
data remove storage pack:gui_api spell_wheel_draw_context
