$data modify storage hpww:cooldown_api current set value {spell:"$(spell)"}

scoreboard players set @s cooldown_api 0
scoreboard players set #remaining cooldown_api 0

data remove storage pdb:main out
function pdb:get_me_cached
$execute store result score #remaining cooldown_api run data get storage pdb:main out.cooldowns.$(spell).remaining 1

execute if score #remaining cooldown_api matches 1.. run scoreboard players operation @s cooldown_api = #remaining cooldown_api
execute if score #remaining cooldown_api matches 1.. run scoreboard players add @s cooldown_api 19
execute if score #remaining cooldown_api matches 1.. run scoreboard players operation @s cooldown_api /= #20 cooldown_api
execute if score #remaining cooldown_api matches 1.. run scoreboard players set @s cooldown_api_active 1
