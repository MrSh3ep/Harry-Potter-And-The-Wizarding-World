function hpww:main/spells/function/api/gui/begin


#Fill Level / back layer
$function hpww:main/spells/function/api/gui/define_slot {font:"hpww_field_guide:level", character:"\uB$(XPGlyph)", pos_x:"02", pos_y:"02", align:"0", size:"8"}

#Border/logo / middle layer
function hpww:main/spells/function/api/gui/define_slot {font:"hpww_field_guide:level", character:"\uA101", pos_x:"02", pos_y:"02", align:"0", size:"8"}

#Number / front layer
$function hpww:main/spells/function/api/gui/define_slot {font:"hpww_field_guide:number", character:"\uA$(NumberGlyph)", pos_x:"02", pos_y:"02", align:"0", size:"8"}



function hpww:main/spells/function/api/gui/draw