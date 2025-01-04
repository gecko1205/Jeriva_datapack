advancement revoke @s only jrv:item/cardboard_box/interaction

execute anchored eyes positioned ^ ^-.3 ^1 if block ~ ~ ~ #replaceable as @s[gamemode=!adventure] run function jrv:item/cardboard_box/logic/place/confirm