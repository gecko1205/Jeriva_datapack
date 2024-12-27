execute if score timer jrv.item.adrenaline_syringe matches 1..1199 run scoreboard players add timer jrv.item.adrenaline_syringe 1

execute as @a if items entity @s container.* jigsaw[custom_data={item:adrenaline_syringe}] run return run function jrv:item/adrenaline_syringe/logic/replace/container with entity @s Inventory[{id:"minecraft:jigsaw",components:{"minecraft:custom_data":{item:adrenaline_syringe}}}]
execute as @a if items entity @s weapon.offhand jigsaw[custom_data={item:adrenaline_syringe}] run function jrv:item/adrenaline_syringe/logic/replace/offhand