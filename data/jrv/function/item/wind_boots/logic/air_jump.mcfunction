advancement revoke @s only jrv:item/wind_boots/air_jump

execute unless score jump_delay jrv.item.wind_boots matches 0 run return fail

scoreboard players remove jump_delay jrv.item.wind_boots 1
execute if entity @s[gamemode=survival] run function jrv:item/wind_boots/logic/gamemode/survival
execute if entity @s[gamemode=adventure] run function jrv:item/wind_boots/logic/gamemode/adventure

playsound entity.wind_charge.wind_burst player @a ~ ~ ~ 0.7 1
particle minecraft:gust ~ ~ ~ 0 0 0 0 0

scoreboard players set $x player_motion.api.launch 0
scoreboard players set $y player_motion.api.launch 7500
scoreboard players set $z player_motion.api.launch 0
function player_motion:api/launch_xyz