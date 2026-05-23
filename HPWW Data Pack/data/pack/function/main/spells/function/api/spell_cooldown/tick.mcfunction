# Main entrypoint for the spell API. Called once from pack:tick.
execute as @a[scores={cooldown_api_probe=1..}] run scoreboard players remove @s cooldown_api_probe 1
execute as @a[scores={cooldown_api_active=0,cooldown_api_probe=0}] run function pack:main/spells/function/api/spell_cooldown/tick/probe
execute as @a[scores={cooldown_api_active=1..}] at @s run function pack:main/spells/function/api/spell_cooldown/tick/player
