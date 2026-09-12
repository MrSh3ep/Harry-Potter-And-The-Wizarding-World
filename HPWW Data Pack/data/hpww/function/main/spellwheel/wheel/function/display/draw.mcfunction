# Called from spell-wheel display pages.
$function hpww:main/spells/function/api/gui/set_base_actionbar {components:[{"text":"\u$(slot_1)","font":"hpww:$(slot_1_font)","shadow_color":0},{"text":"\uEA0A","font":"hpww:custom_glyphs","shadow_color":0},{"text":"\u$(slot_2)","font":"hpww:$(slot_2_font)","shadow_color":0},{"text":"\uEA0A","font":"hpww:custom_glyphs","shadow_color":0},{"text":"\u$(slot_3)","font":"hpww:$(slot_3_font)","shadow_color":0},{"text":"\uEA0A","font":"hpww:custom_glyphs","shadow_color":0},{"text":"\u$(slot_4)","font":"hpww:$(slot_4_font)","shadow_color":0},{"text":"\uE03$(selected_page_number)","font":"hpww:custom_glyphs","shadow_color":0},{"translate":"space.-45","font":"minecraft:default"},{"text":"\uE01$(protego_value)","shadow_color":0,"font":"hpww:custom_glyphs"}]}

execute if data storage hpww:gui_api refresh_base_only run return 1
data modify storage hpww:gui_api spell_wheel_draw_context set value 1b
function hpww:main/spells/function/api/gui/begin
function hpww:main/spells/function/api/gui/draw
data remove storage hpww:gui_api spell_wheel_draw_context
