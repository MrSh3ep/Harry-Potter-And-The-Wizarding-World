execute unless data storage mcfentitymap:maps hpww_spell_trails run data modify storage mcfentitymap:maps hpww_spell_trails set value []
$execute unless data storage mcfentitymap:maps hpww_spell_trails[{UUID:"$(plain)"}] run data modify storage mcfentitymap:maps hpww_spell_trails append value {UUID:"$(plain)",keys:[],values:{}}
