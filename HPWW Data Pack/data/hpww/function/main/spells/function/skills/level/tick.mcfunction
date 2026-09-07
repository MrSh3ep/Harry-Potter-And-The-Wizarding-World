return fail
execute if score @s levioso_spell_active.timer matches 1.. run return fail

#makes sure U have the new path
execute unless data storage mcfentitymap:maps hpww_level run function mcfentitymap:new {path: hpww_level}
execute store result score @s hpww.level_has_row run function mcfentitymap:contains_entity {path: hpww_level}
execute if score @s hpww.level_has_row matches 0 run function mcfentitymap:new {path: hpww_level}

#resets level
data remove storage mcfentitymap:out level

#saves values
execute store result storage mcfentitymap:out level.XPGlyph int 1 run scoreboard players get @s hpww.FillGlyph
execute store result storage mcfentitymap:out level.NumberGlyph int 1 run scoreboard players get @s hpww.NumberGlyph

function hpww:main/spells/function/skills/level/main with storage mcfentitymap:out level
