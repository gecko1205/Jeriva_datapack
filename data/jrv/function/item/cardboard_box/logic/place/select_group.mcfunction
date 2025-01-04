$setblock ~ ~ ~ $(container_type)[facing=$(direction)]

$data modify block ~ ~ ~ Items set from entity @e[type=chest_minecart,tag=jrv.item.cardboard_box.minecart,scores={jrv.item.cardboard_box.id=$(id)},limit=1] Items

$kill @e[tag=jrv.item.cardboard_box,scores={jrv.item.cardboard_box.id=$(id)}]