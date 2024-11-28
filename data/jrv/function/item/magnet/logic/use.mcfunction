advancement revoke @s only jrv:item/magnet/use
function jrv:core/replenish_item/main

execute as @e[type=item,distance=..8] run data merge entity @s {PickupDelay:0s}
tp @e[type=item,distance=..8] @s[gamemode=!spectator]
tp @e[type=experience_orb,distance=..8] @s[gamemode=!spectator]

execute as @a[distance=.1..4] run function jrv:item/magnet/logic/push_players
execute positioned ^ ^ ^2 as @e[type=!player,type=!item,distance=..3] run function jrv:item/magnet/logic/push_entities