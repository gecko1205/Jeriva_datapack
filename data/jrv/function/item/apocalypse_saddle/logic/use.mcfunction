advancement revoke @s only jrv:item/apocalypse_saddle/use

execute if entity @s[nbt={OnGround:true}] if block ~ ~1 ~ #air if block ~ ~2 ~ #air align xyz positioned ~.5 ~ ~.5 run return run function jrv:item/apocalypse_saddle/logic/summon

function jrv:item/apocalypse_saddle/give
execute if entity @s[nbt={OnGround:false}] run return run title @s actionbar {"text":"Fique no solo para usar","color":"red"}
title @s actionbar {"text":"É necessário mais espaço para usar","color":"red"}