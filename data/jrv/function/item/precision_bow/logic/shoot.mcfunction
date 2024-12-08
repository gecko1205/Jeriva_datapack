execute positioned 0.0 0 0.0 run summon marker ^ ^ ^5 {Tags:["jrv.item.precision_bow.marker"]}

summon arrow ~ ~ ~ {Tags:["jrv.item.precision_bow.arrow","jrv.item.precision_bow.temp"],NoGravity:true,damage:0.5d,PierceLevel:64b,crit:false,pickup:0b}

data modify entity @e[type=arrow,tag=jrv.item.precision_bow.temp,limit=1] Motion set from entity @e[type=marker,tag=jrv.item.precision_bow.marker,limit=1] Pos
data modify entity @e[type=arrow,tag=jrv.item.precision_bow.temp,limit=1] Owner set from entity @p UUID
data modify entity @e[type=arrow,tag=jrv.item.precision_bow.temp,limit=1] weapon set from entity @n[type=arrow,tag=jrv.item.precision_bow.clone_arrow] weapon

tag @e[tag=jrv.item.precision_bow.temp] remove jrv.item.precision_bow.temp
kill @e[tag=jrv.item.precision_bow.marker]