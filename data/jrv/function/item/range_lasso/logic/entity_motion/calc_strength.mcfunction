scoreboard players set strength jrv.item.range_lasso 42
scoreboard players operation strength jrv.item.range_lasso *= step jrv.item.range_lasso
execute store result storage jrv.item.range_lasso strength float 0.001 run scoreboard players get strength jrv.item.range_lasso

function jrv:item/range_lasso/logic/entity_motion/push with storage jrv.item.range_lasso