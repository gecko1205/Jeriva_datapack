execute unless data entity @s leash run return fail
execute store success score tied jrv.item.range_lasso run data modify entity @s leash.UUID set from entity @p[tag=jrv.item.range_lasso.lassoer] UUID

execute if score tied jrv.item.range_lasso matches 0 run return 1
execute if score tied jrv.item.range_lasso matches 1 run return fail