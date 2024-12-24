execute if score levels jrv.item.sculk_bottle matches 0..16 run function jrv:item/sculk_bottle/logic/calculate/level_0
execute if score levels jrv.item.sculk_bottle matches 17..29 run function jrv:item/sculk_bottle/logic/calculate/level_17
execute if score levels jrv.item.sculk_bottle matches 30.. run return run function jrv:item/sculk_bottle/logic/calculate/level_30