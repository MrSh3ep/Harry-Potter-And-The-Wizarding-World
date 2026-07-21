#check if 
# Once (will run if you are targeting an entity)

function #bs.view:as_aimed_entity {run:"execute if entity @s[type=interaction] run function hpww:main/field_guide/gui/main_page/is_being_looked_at",with:{}}
execute as @e[scores={hpww.interaction.is_being_looked_at=1..}, type=interaction, distance=..5] run scoreboard players remove @s hpww.interaction.is_being_looked_at 1

#checks if any of your linked entitys are being looked at, if its you then it will run a function, if not then it returns 0




function hpww:main/field_guide/gui/main_page/highlight/spell_wheel
function hpww:main/field_guide/gui/main_page/de_highlight/spell_wheel

function hpww:main/field_guide/gui/main_page/highlight/gear
function hpww:main/field_guide/gui/main_page/de_highlight/gear

function hpww:main/field_guide/gui/main_page/highlight/talents
function hpww:main/field_guide/gui/main_page/de_highlight/talents

function hpww:main/field_guide/gui/main_page/highlight/challenges
function hpww:main/field_guide/gui/main_page/de_highlight/challenges

function hpww:main/field_guide/gui/main_page/highlight/quests
function hpww:main/field_guide/gui/main_page/de_highlight/quests

function hpww:main/field_guide/gui/main_page/highlight/collection
function hpww:main/field_guide/gui/main_page/de_highlight/collection

function hpww:main/field_guide/gui/main_page/highlight/settings
function hpww:main/field_guide/gui/main_page/de_highlight/settings

function hpww:main/field_guide/gui/main_page/highlight/exit
function hpww:main/field_guide/gui/main_page/de_highlight/exit