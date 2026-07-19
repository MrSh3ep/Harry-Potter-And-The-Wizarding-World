#saves values again but as strings
$function mcfentitymap:put {path: hpww_level, key: XPGlyph, value: $(XPGlyph)}
$function mcfentitymap:put {path: hpww_level, key: NumberGlyph, value: $(NumberGlyph)}

function mcfentitymap:get_or_default {path: hpww_level, key: XPGlyph, output: "level.XPGlyph", default: 100}
function mcfentitymap:get_or_default {path: hpww_level, key: NumberGlyph, output: "level.NumberGlyph", default: 101}

function hpww:main/spells/function/skills/level/draw with storage mcfentitymap:out level
