advancement revoke @s only jrv:item/adrenaline_syringe/acquire

execute store result score health jrv.item.adrenaline_syringe run data get entity @s Health 10
execute unless score health jrv.item.adrenaline_syringe matches ..10 run return fail

execute unless score item.adrenaline_syringe jrv.rewards matches 1.. run function jrv:item/adrenaline_syringe/reward