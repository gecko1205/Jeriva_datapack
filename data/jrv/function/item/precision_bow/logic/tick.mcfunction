execute at @p[predicate=jrv:item/precision_bow/holding_bow] as @n[tag=!jrv.item.precision_bow.arrow,type=#arrows,distance=..2,nbt={weapon:{components:{"minecraft:custom_data":{item:precision_bow}}}}] run function jrv:item/precision_bow/logic/modify_arrow

execute as @e[type=arrow,tag=jrv.item.precision_bow.arrow] at @s run function jrv:item/precision_bow/logic/timer