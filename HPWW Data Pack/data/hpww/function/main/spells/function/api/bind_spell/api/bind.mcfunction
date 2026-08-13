# Format _ _ _ function hpww:main/spells/function/api/bind_spell/api/bind {spell_name:"lowercase", slot:#, page:#}

data remove storage pdb:main in
data remove storage pdb:main out
function pdb:get_me_cached
data modify storage pdb:main in set from storage pdb:main out


#check if valid spell
$execute unless data storage hpww:gobal_spell_data $(spell_name) run return run say "That is not a valid spell. If you are making a content pack, please put your spell data in api/spell_cooldown/spell_definitions.mcfunction"

#write spell
$data remove storage pdb:main in.spell_wheel_data.spells.page_$(page).slot_$(slot)
$data modify storage pdb:main in.spell_wheel_data.spells.page_$(page).slot_$(slot) set from storage hpww:gobal_spell_data $(spell_name)

function pdb:save_me

function hpww:main/spells/function/api/spell_cooldown/icons/force_refresh_all_icons
function hpww:main/spellwheel/wheel/function/cache/queue_refresh
function hpww:main/spellwheel/wheel/function/cache/refresh_if_dirty

execute if score @s hpww.fg.spell_wheel_page.wheel_page matches 1 run return run function hpww:main/field_guide/gui/spell_wheel_page/load_wheel_pages/page_1
execute if score @s hpww.fg.spell_wheel_page.wheel_page matches 2 run return run function hpww:main/field_guide/gui/spell_wheel_page/load_wheel_pages/page_2
execute if score @s hpww.fg.spell_wheel_page.wheel_page matches 3 run return run function hpww:main/field_guide/gui/spell_wheel_page/load_wheel_pages/page_3
execute if score @s hpww.fg.spell_wheel_page.wheel_page matches 4 run return run function hpww:main/field_guide/gui/spell_wheel_page/load_wheel_pages/page_4
execute if score @s hpww.fg.spell_wheel_page.wheel_page matches 5 run return run function hpww:main/field_guide/gui/spell_wheel_page/load_wheel_pages/page_5
execute if score @s hpww.fg.spell_wheel_page.wheel_page matches 6 run return run function hpww:main/field_guide/gui/spell_wheel_page/load_wheel_pages/page_6
execute if score @s hpww.fg.spell_wheel_page.wheel_page matches 7 run return run function hpww:main/field_guide/gui/spell_wheel_page/load_wheel_pages/page_7
