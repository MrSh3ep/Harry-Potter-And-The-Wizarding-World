#Disables the spell wheel so the Level UI Can appear.. Unavoidable untill u port the spell wheel to the guiAPI sigh..
scoreboard players set @s level.SpellWheelDraw 1

function pack:main/spells/function/api/gui/begin
function pack:main/spells/function/api/gui/define_slot {font:"hpww_field_guide:level", character:"\uB110", pos_x:"02", pos_y:"02", align:"0", size:"9"}

function pack:main/spells/function/api/gui/define_slot {font:"hpww_field_guide:level", character:"\uA102", pos_x:"02", pos_y:"02", align:"0", size:"9"}

function pack:main/spells/function/api/gui/draw
