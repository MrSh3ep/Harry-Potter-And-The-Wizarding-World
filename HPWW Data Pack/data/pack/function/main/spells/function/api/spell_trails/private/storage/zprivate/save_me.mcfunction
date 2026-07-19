execute unless data storage mcfentitymap:maps hpww_spell_trails run data modify storage mcfentitymap:maps hpww_spell_trails set value []
$execute unless data storage mcfentitymap:maps hpww_spell_trails[{UUID:"$(plain)"}] run data modify storage mcfentitymap:maps hpww_spell_trails append value {UUID:"$(plain)",keys:[],values:{}}
$execute unless data storage mcfentitymap:maps hpww_spell_trails[{UUID:"$(plain)"}].values.data run data modify storage mcfentitymap:maps hpww_spell_trails[{UUID:"$(plain)"}].keys append value "data"
$data modify storage mcfentitymap:maps hpww_spell_trails[{UUID:"$(plain)"}].values.data set from storage pack:trail_storage in
