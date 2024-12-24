summon marker 0.0 0.0 0.0 {Tags:["jrv.item.range_lasso.direction"]}
$execute facing entity @p feet positioned 0.0 0.0 0.0 run tp @n[type=marker,tag=jrv.item.range_lasso.direction] ^ ^ ^$(strength)
data modify entity @s Motion set from entity @n[type=marker,tag=jrv.item.range_lasso.direction] Pos
kill @n[type=marker,tag=jrv.item.range_lasso.direction]