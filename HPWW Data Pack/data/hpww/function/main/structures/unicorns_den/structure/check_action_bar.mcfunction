# Preserve the viewing player while bs.view changes @s to the aimed entity.
tag @s add hpww.unicorns_den.action_bar_viewer
function #bs.view:as_aimed_entity {run:"execute if entity @s[type=interaction] run function hpww:main/structures/unicorns_den/structure/action_bar",with:{}}
tag @s remove hpww.unicorns_den.action_bar_viewer
