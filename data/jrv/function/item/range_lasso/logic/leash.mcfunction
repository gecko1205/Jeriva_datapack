# distance=..10 (Vanilla)
execute unless entity @p[tag=jrv.item.range_lasso.lassoer,distance=..12] run return run function jrv:item/range_lasso/logic/entity_motion/calc_strength
execute unless score leads jrv.item.range_lasso matches 1.. if entity @p[tag=jrv.item.range_lasso.lassoer,gamemode=!creative] run return run function jrv:item/range_lasso/logic/entity_motion/calc_strength

data modify entity @s leash.UUID set from entity @p[tag=jrv.item.range_lasso.lassoer] UUID
clear @p[tag=jrv.item.range_lasso.lassoer,gamemode=!creative] lead 1