advancement revoke @s only jrv:item/range_lasso/use
function jrv:core/replenish_item/main
#---------------------------------------------------------------#
execute anchored eyes run particle minecraft:sweep_attack ^ ^-.3 ^1.2
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 0.5 1.5

tag @s add jrv.item.range_lasso.lassoer
execute anchored eyes run function jrv:item/range_lasso/logic/raycast/cast
tag @s remove jrv.item.range_lasso.lassoer