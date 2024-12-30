advancement revoke @s only jrv:core/player/used_totem
execute if entity @s[tag=jrv.core.player.ignore_totem] run return fail

playsound jrv:core/player/use_totem
#particle totem_of_undying ~ ~1 ~ 0.3 0 0.3 0.5 50