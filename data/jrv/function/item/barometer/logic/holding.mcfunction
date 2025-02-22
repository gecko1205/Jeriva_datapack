execute store result score @s jrv.item.barometer.y run data get entity @s Pos[1]
title @s actionbar [{"text":"Y: "},{"score":{"name":"@s","objective":"jrv.item.barometer.y"},"color":"gold"}]

execute if items entity @s weapon.mainhand *[custom_data={item:barometer}] at @s run function jrv:item/barometer/logic/update_mainhand
execute if items entity @s weapon.offhand *[custom_data={item:barometer}] at @s run function jrv:item/barometer/logic/update_offhand