tag @s add jrv.item.straw_hat.farmer
execute positioned ~1 ~ ~1 run function jrv:item/straw_hat/logic/check
execute positioned ~1 ~ ~ run function jrv:item/straw_hat/logic/check
execute positioned ~1 ~ ~-1 run function jrv:item/straw_hat/logic/check
execute positioned ~ ~ ~1 run function jrv:item/straw_hat/logic/check
execute positioned ~ ~ ~ run function jrv:item/straw_hat/logic/check
execute positioned ~ ~ ~-1 run function jrv:item/straw_hat/logic/check
execute positioned ~-1 ~ ~1 run function jrv:item/straw_hat/logic/check
execute positioned ~-1 ~ ~ run function jrv:item/straw_hat/logic/check
execute positioned ~-1 ~ ~-1 run function jrv:item/straw_hat/logic/check
tag @s remove jrv.item.straw_hat.farmer