$execute if data storage mcfentitymap:maps hpww_spell_trails[{UUID:"$(plain)"}].values.data run data modify storage pack:trail_storage out set from storage mcfentitymap:maps hpww_spell_trails[{UUID:"$(plain)"}].values.data
$execute unless data storage mcfentitymap:maps hpww_spell_trails[{UUID:"$(plain)"}].values.data run data modify storage pack:trail_storage out set value {}
