
#makes sure U have the new path
execute unless data storage mcfentitymap:maps hpww_level run function mcfentitymap:new {path: hpww_level}
execute store result score @s hpww.level_has_row run function mcfentitymap:contains_entity {path: hpww_level}
execute if score @s hpww.level_has_row matches 0 run function mcfentitymap:new {path: hpww_level}

#resets level
data remove storage mcfentitymap:out level

#saves values
execute store result storage mcfentitymap:out level.XPGlyph int 1 run scoreboard players get @s hpww.XPGlyph
execute store result storage mcfentitymap:out level.NumberGlyph int 1 run scoreboard players get @s hpww.NumberGlyph

function pack:main/spells/function/skills/level/main with storage mcfentitymap:out level
