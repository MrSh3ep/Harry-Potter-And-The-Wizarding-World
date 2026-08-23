# $(spell_name) comes from the current drawer interaction, so this supports new spells without a separate lock list.
$execute unless entity @s[advancements={hpww:spells/unlocked/$(spell_name)_unlocked=true}] run return fail
$function hpww:main/field_guide/gui/spell_wheel_page/bind/apply_drawer_selected_variant {slot:$(slot)}
