execute positioned 0.0 0 0.0 run summon marker ^ ^.5 ^1.5 {Tags:["jrv.item.magnet.direction"]}

data modify entity @s Motion set from entity @e[type=marker,tag=jrv.item.magnet.direction,limit=1] Pos

kill @e[tag=jrv.item.magnet.direction]