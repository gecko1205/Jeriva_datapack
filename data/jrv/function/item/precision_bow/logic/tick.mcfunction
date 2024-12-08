execute as @e[tag=!jrv.item.precision_bow.arrow,type=arrow,nbt={crit:true,weapon:{components:{"minecraft:custom_data":{item:precision_bow}}}}] run function jrv:item/precision_bow/logic/temp_arrow

execute as @e[type=arrow,tag=jrv.item.precision_bow.arrow] at @s run function jrv:item/precision_bow/logic/timer