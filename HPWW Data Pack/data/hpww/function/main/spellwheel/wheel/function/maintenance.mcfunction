# Poll often enough to repair moved/dropped wheel items without doing the
# complete inventory scan every server tick.
scoreboard players set @s spell_wheel_maintenance_timer 5
function hpww:main/spellwheel/wheel/function/drop/replace_macro
function hpww:main/spellwheel/wheel/function/inventory_wand_prevention
