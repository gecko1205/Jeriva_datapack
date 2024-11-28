advancement revoke @s only jrv:item/magnet/use
function jrv:core/replenish_item/main

execute as @e[type=item,distance=..8] run data merge entity @s {PickupDelay:0s}
tp @e[type=item,distance=..8] @s[gamemode=!spectator]
tp @e[type=experience_orb,distance=..8] @s[gamemode=!spectator]

execute anchored eyes run particle minecraft:electric_spark ^ ^ ^1.5 .3 .3 .3 .5 5
playsound jrv:item/magnet/use player @a ~ ~ ~ 1 1

tag @s add jrv.item.magnet.user
execute as @a[distance=.1..4] at @s facing entity @p[tag=jrv.item.magnet.user] feet run function jrv:item/magnet/logic/push_players
execute positioned ^ ^ ^2 as @e[type=!player,type=!item,distance=..3] run function jrv:item/magnet/logic/push_entities
tag @s remove jrv.item.magnet.user