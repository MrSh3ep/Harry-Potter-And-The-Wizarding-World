$data modify storage pack:cooldown_api icon set value {spell:"$(spell)",key_path:"Keys.Active"}

$execute unless data storage pdb:main in.cooldowns.$(spell) run data modify storage pdb:main in.cooldowns.$(spell) set value {remaining:0,duration:0,stage:-99,paused:0,pause_timer:0,selected:0,selected_timer:0}

scoreboard players set #remaining cooldown_api 0
scoreboard players set #duration cooldown_api 0
scoreboard players set #duration_work cooldown_api 0
scoreboard players set #duration_minus_1 cooldown_api 0
scoreboard players set #selected cooldown_api 0
scoreboard players set #stage cooldown_api -99
scoreboard players set #target_stage cooldown_api 0
scoreboard players set #stage_flip cooldown_api 0

$execute store result score #remaining cooldown_api run data get storage pdb:main in.cooldowns.$(spell).remaining 1
$execute store result score #duration cooldown_api run data get storage pdb:main in.cooldowns.$(spell).duration 1
$execute store result score #selected cooldown_api run data get storage pdb:main in.cooldowns.$(spell).selected 1
$execute store result score #stage cooldown_api run data get storage pdb:main in.cooldowns.$(spell).stage 1

execute if score #selected cooldown_api matches 1.. run scoreboard players set #target_stage cooldown_api -1
execute if score #selected cooldown_api matches 0 if score #remaining cooldown_api matches 1.. run scoreboard players operation #duration_work cooldown_api = #duration cooldown_api
execute if score #selected cooldown_api matches 0 if score #remaining cooldown_api matches 1.. if score #duration_work cooldown_api matches ..0 run scoreboard players operation #duration_work cooldown_api = #remaining cooldown_api
execute if score #selected cooldown_api matches 0 if score #remaining cooldown_api matches 1.. run scoreboard players operation #target_stage cooldown_api = #remaining cooldown_api
execute if score #selected cooldown_api matches 0 if score #remaining cooldown_api matches 1.. run scoreboard players operation #target_stage cooldown_api *= #26 cooldown_api
execute if score #selected cooldown_api matches 0 if score #remaining cooldown_api matches 1.. run scoreboard players operation #duration_minus_1 cooldown_api = #duration_work cooldown_api
execute if score #selected cooldown_api matches 0 if score #remaining cooldown_api matches 1.. run scoreboard players remove #duration_minus_1 cooldown_api 1
execute if score #selected cooldown_api matches 0 if score #remaining cooldown_api matches 1.. run scoreboard players operation #target_stage cooldown_api += #duration_minus_1 cooldown_api
execute if score #selected cooldown_api matches 0 if score #remaining cooldown_api matches 1.. run scoreboard players operation #target_stage cooldown_api /= #duration_work cooldown_api
execute if score #target_stage cooldown_api matches ..0 if score #remaining cooldown_api matches 1.. run scoreboard players set #target_stage cooldown_api 1
execute if score #target_stage cooldown_api matches 27.. run scoreboard players set #target_stage cooldown_api 26
execute if score #selected cooldown_api matches 0 if score #remaining cooldown_api matches 1.. run scoreboard players operation #stage_flip cooldown_api = #27 cooldown_api
execute if score #selected cooldown_api matches 0 if score #remaining cooldown_api matches 1.. run scoreboard players operation #stage_flip cooldown_api -= #target_stage cooldown_api
execute if score #selected cooldown_api matches 0 if score #remaining cooldown_api matches 1.. run scoreboard players operation #target_stage cooldown_api = #stage_flip cooldown_api

execute if score #target_stage cooldown_api = #stage cooldown_api run return 0

$execute store result storage pdb:main in.cooldowns.$(spell).stage int 1 run scoreboard players get #target_stage cooldown_api

execute if score #target_stage cooldown_api matches -1 run data modify storage pack:cooldown_api icon.key_path set value "Keys.Selected"
execute if score #target_stage cooldown_api matches 0 run data modify storage pack:cooldown_api icon.key_path set value "Keys.Active"
execute if score #target_stage cooldown_api matches 1 run data modify storage pack:cooldown_api icon.key_path set value "Keys.Cooldown.D_1"
execute if score #target_stage cooldown_api matches 2 run data modify storage pack:cooldown_api icon.key_path set value "Keys.Cooldown.D_2"
execute if score #target_stage cooldown_api matches 3 run data modify storage pack:cooldown_api icon.key_path set value "Keys.Cooldown.D_3"
execute if score #target_stage cooldown_api matches 4 run data modify storage pack:cooldown_api icon.key_path set value "Keys.Cooldown.D_4"
execute if score #target_stage cooldown_api matches 5 run data modify storage pack:cooldown_api icon.key_path set value "Keys.Cooldown.D_5"
execute if score #target_stage cooldown_api matches 6 run data modify storage pack:cooldown_api icon.key_path set value "Keys.Cooldown.D_6"
execute if score #target_stage cooldown_api matches 7 run data modify storage pack:cooldown_api icon.key_path set value "Keys.Cooldown.D_7"
execute if score #target_stage cooldown_api matches 8 run data modify storage pack:cooldown_api icon.key_path set value "Keys.Cooldown.D_8"
execute if score #target_stage cooldown_api matches 9 run data modify storage pack:cooldown_api icon.key_path set value "Keys.Cooldown.D_9"
execute if score #target_stage cooldown_api matches 10 run data modify storage pack:cooldown_api icon.key_path set value "Keys.Cooldown.D_10"
execute if score #target_stage cooldown_api matches 11 run data modify storage pack:cooldown_api icon.key_path set value "Keys.Cooldown.D_11"
execute if score #target_stage cooldown_api matches 12 run data modify storage pack:cooldown_api icon.key_path set value "Keys.Cooldown.D_12"
execute if score #target_stage cooldown_api matches 13 run data modify storage pack:cooldown_api icon.key_path set value "Keys.Cooldown.D_13"
execute if score #target_stage cooldown_api matches 14 run data modify storage pack:cooldown_api icon.key_path set value "Keys.Cooldown.D_14"
execute if score #target_stage cooldown_api matches 15 run data modify storage pack:cooldown_api icon.key_path set value "Keys.Cooldown.D_15"
execute if score #target_stage cooldown_api matches 16 run data modify storage pack:cooldown_api icon.key_path set value "Keys.Cooldown.D_16"
execute if score #target_stage cooldown_api matches 17 run data modify storage pack:cooldown_api icon.key_path set value "Keys.Cooldown.D_17"
execute if score #target_stage cooldown_api matches 18 run data modify storage pack:cooldown_api icon.key_path set value "Keys.Cooldown.D_18"
execute if score #target_stage cooldown_api matches 19 run data modify storage pack:cooldown_api icon.key_path set value "Keys.Cooldown.D_19"
execute if score #target_stage cooldown_api matches 20 run data modify storage pack:cooldown_api icon.key_path set value "Keys.Cooldown.D_20"
execute if score #target_stage cooldown_api matches 21 run data modify storage pack:cooldown_api icon.key_path set value "Keys.Cooldown.D_21"
execute if score #target_stage cooldown_api matches 22 run data modify storage pack:cooldown_api icon.key_path set value "Keys.Cooldown.D_22"
execute if score #target_stage cooldown_api matches 23 run data modify storage pack:cooldown_api icon.key_path set value "Keys.Cooldown.D_23"
execute if score #target_stage cooldown_api matches 24 run data modify storage pack:cooldown_api icon.key_path set value "Keys.Cooldown.D_24"
execute if score #target_stage cooldown_api matches 25 run data modify storage pack:cooldown_api icon.key_path set value "Keys.Cooldown.D_25"
execute if score #target_stage cooldown_api matches 26 run data modify storage pack:cooldown_api icon.key_path set value "Keys.Cooldown.D_26"

function pack:main/spells/function/api/spell_cooldown/icons/apply_icon_to_storage with storage pack:cooldown_api icon
scoreboard players set #cooldown_api_changed cooldown_api 1
scoreboard players set #cooldown_icon_changed cooldown_api 1
