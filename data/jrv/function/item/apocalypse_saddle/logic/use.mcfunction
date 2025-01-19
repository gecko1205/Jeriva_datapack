advancement revoke @s only jrv:item/apocalypse_saddle/use

execute if entity @s[nbt={OnGround:true},scores={jrv.time_since_player_hurt=200..}] if block ~ ~1 ~ #air if block ~ ~2 ~ #air align xyz positioned ~.5 ~ ~.5 run return run function jrv:item/apocalypse_saddle/logic/summon

function jrv:item/apocalypse_saddle/give
execute if entity @s[nbt={OnGround:false}] run return run title @s actionbar {"translate":"jrv.item.apocalypse_saddle.error.ground","color":"red"}
execute if entity @s[scores={jrv.time_since_player_hurt=..200}] run return run title @s actionbar {"translate":"jrv.item.apocalypse_saddle.error.combat","color":"red"}
title @s actionbar {"translate":"jrv.item.apocalypse_saddle.error.space","color":"red"}