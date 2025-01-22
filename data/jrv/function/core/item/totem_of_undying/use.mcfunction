advancement revoke @s only jrv:core/item/totem_of_undying/use
execute if entity @s[tag=jrv.core.item.totem_of_undying.ignore] run return fail

playsound jrv:core/player/use_totem
tag @s remove jrv.core.item.totem_of_undying.active