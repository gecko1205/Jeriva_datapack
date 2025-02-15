execute if entity @p[tag=jrv.item.range_lasso.lassoer,distance=14..] run return run particle crit ~ ~ ~ 0.1 0.1 0.1 0.2 8 normal @s
scoreboard players add step jrv.item.range_lasso 1

execute as @p[tag=!jrv.item.range_lasso.lassoer,dx=0,distance=..10] facing entity @p[tag=jrv.item.range_lasso.lassoer] feet run return run function jrv:item/range_lasso/logic/player_motion

execute as @n[type=!#jrv:item/range_lasso/not_leashable,type=!leash_knot,dx=0] unless data entity @s leash run return run function jrv:item/range_lasso/logic/leash

execute if block ~ ~ ~ #fences run return run function jrv:item/range_lasso/logic/fence/tie

execute if block ~ ~ ~ #replaceable positioned ^ ^ ^.1 run function jrv:item/range_lasso/logic/raycast/ray
execute unless block ~ ~ ~ #replaceable run return run particle crit ~ ~.1 ~ 0.1 0.1 0.1 0.2 8 normal @s