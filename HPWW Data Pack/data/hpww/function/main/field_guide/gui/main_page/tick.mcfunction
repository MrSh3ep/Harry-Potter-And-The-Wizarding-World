#check if 
# Once (will run if you are targeting an entity)

function #bs.view:as_aimed_entity {run:"execute if entity @s[type=interaction] run function hpww:main/field_guide/gui/main_page/is_being_looked_at",with:{}}
execute as @e[scores={hpww.interaction.is_being_looked_at=1..}, type=interaction, distance=..5] run scoreboard players remove @s hpww.interaction.is_being_looked_at 1

# Run the first matching chain only. A successful chain returns immediately, so no later chain can run.
# Add more entries by copying the two lines for an interaction and changing its tag/function names.

execute if entity @e[type=interaction,tag=aj.field_guide_gui.interaction.spell_wheel_interaction,limit=1,sort=nearest,distance=..5,scores={hpww.interaction.is_being_looked_at=2}] if function hpww:main/field_guide/gui/main_page/highlight/spell_wheel run return 1
execute if entity @e[type=interaction,tag=aj.field_guide_gui.interaction.spell_wheel_interaction,limit=1,sort=nearest,distance=..5,scores={hpww.interaction.is_being_looked_at=1}] if function hpww:main/field_guide/gui/main_page/de_highlight/spell_wheel run return 1

execute if entity @e[type=interaction,tag=aj.field_guide_gui.interaction.gear_interaction,limit=1,sort=nearest,distance=..5,scores={hpww.interaction.is_being_looked_at=2}] if function hpww:main/field_guide/gui/main_page/highlight/gear run return 1
execute if entity @e[type=interaction,tag=aj.field_guide_gui.interaction.gear_interaction,limit=1,sort=nearest,distance=..5,scores={hpww.interaction.is_being_looked_at=1}] if function hpww:main/field_guide/gui/main_page/de_highlight/gear run return 1

execute if entity @e[type=interaction,tag=aj.field_guide_gui.interaction.talents_interaction,limit=1,sort=nearest,distance=..5,scores={hpww.interaction.is_being_looked_at=2}] if function hpww:main/field_guide/gui/main_page/highlight/talents run return 1
execute if entity @e[type=interaction,tag=aj.field_guide_gui.interaction.talents_interaction,limit=1,sort=nearest,distance=..5,scores={hpww.interaction.is_being_looked_at=1}] if function hpww:main/field_guide/gui/main_page/de_highlight/talents run return 1

execute if entity @e[type=interaction,tag=aj.field_guide_gui.interaction.challenges_interaction,limit=1,sort=nearest,distance=..5,scores={hpww.interaction.is_being_looked_at=2}] if function hpww:main/field_guide/gui/main_page/highlight/challenges run return 1
execute if entity @e[type=interaction,tag=aj.field_guide_gui.interaction.challenges_interaction,limit=1,sort=nearest,distance=..5,scores={hpww.interaction.is_being_looked_at=1}] if function hpww:main/field_guide/gui/main_page/de_highlight/challenges run return 1

execute if entity @e[type=interaction,tag=aj.field_guide_gui.interaction.quests_interaction,limit=1,sort=nearest,distance=..5,scores={hpww.interaction.is_being_looked_at=2}] if function hpww:main/field_guide/gui/main_page/highlight/quests run return 1
execute if entity @e[type=interaction,tag=aj.field_guide_gui.interaction.quests_interaction,limit=1,sort=nearest,distance=..5,scores={hpww.interaction.is_being_looked_at=1}] if function hpww:main/field_guide/gui/main_page/de_highlight/quests run return 1

execute if entity @e[type=interaction,tag=aj.field_guide_gui.interaction.collection_interaction,limit=1,sort=nearest,distance=..5,scores={hpww.interaction.is_being_looked_at=2}] if function hpww:main/field_guide/gui/main_page/highlight/collection run return 1
execute if entity @e[type=interaction,tag=aj.field_guide_gui.interaction.collection_interaction,limit=1,sort=nearest,distance=..5,scores={hpww.interaction.is_being_looked_at=1}] if function hpww:main/field_guide/gui/main_page/de_highlight/collection run return 1

execute if entity @e[type=interaction,tag=aj.field_guide_gui.interaction.settings_interaction,limit=1,sort=nearest,distance=..5,scores={hpww.interaction.is_being_looked_at=2}] if function hpww:main/field_guide/gui/main_page/highlight/settings run return 1
execute if entity @e[type=interaction,tag=aj.field_guide_gui.interaction.settings_interaction,limit=1,sort=nearest,distance=..5,scores={hpww.interaction.is_being_looked_at=1}] if function hpww:main/field_guide/gui/main_page/de_highlight/settings run return 1

execute if entity @e[type=interaction,tag=aj.field_guide_gui.interaction.exit_interaction,limit=1,sort=nearest,distance=..5,scores={hpww.interaction.is_being_looked_at=2}] if function hpww:main/field_guide/gui/main_page/highlight/exit run return 1
execute if entity @e[type=interaction,tag=aj.field_guide_gui.interaction.exit_interaction,limit=1,sort=nearest,distance=..5,scores={hpww.interaction.is_being_looked_at=1}] if function hpww:main/field_guide/gui/main_page/de_highlight/exit run return 1
