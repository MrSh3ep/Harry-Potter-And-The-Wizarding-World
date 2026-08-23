# Safety check for any caller that reaches the bind API with a locked spell selected.
$execute unless entity @s[advancements={hpww:spells/unlocked/$(spell_name)_unlocked=true}] run return fail
$function hpww:main/spells/function/api/bind_spell/api/bind {spell_name:"$(spell_name)",slot:$(slot),page:$(page)}
function hpww:main/field_guide/gui/spell_wheel_page/bind/clear_drawer_selection
