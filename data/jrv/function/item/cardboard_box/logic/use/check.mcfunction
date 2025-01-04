advancement revoke @s only jrv:item/cardboard_box/use

execute if entity @s[tag=!jrv.item.cardboard_box.carrying,gamemode=!adventure] anchored eyes positioned ^ ^ ^1.5 if block ~ ~ ~ #jrv:item/cardboard_box/allowed_containers run return run function jrv:item/cardboard_box/logic/use/spawn

execute unless entity @s[gamemode=creative] run function jrv:item/cardboard_box/give