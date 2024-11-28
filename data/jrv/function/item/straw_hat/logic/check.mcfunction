execute store success score harvested jrv.item.straw_hat run function jrv:item/straw_hat/logic/harvest
execute if score harvested jrv.item.straw_hat matches 1 as @e[type=item,distance=..2.5,nbt={Age:0s}] run function jrv:item/straw_hat/logic/drops
scoreboard players reset harvested jrv.item.straw_hat

execute if block ~ ~ ~ farmland if block ~ ~.1 ~ #air store success score planted_mh jrv.item.straw_hat run function jrv:item/straw_hat/logic/plant_mh
execute if score planted_mh jrv.item.straw_hat matches 1 run item modify entity @s[gamemode=!creative] weapon.mainhand jrv:common/consume
execute if score planted_mh jrv.item.straw_hat matches 1 run playsound item.crop.plant block @s ~ ~ ~
execute if score planted_mh jrv.item.straw_hat matches 1 run return run scoreboard players reset planted_mh jrv.item.straw_hat

execute if block ~ ~ ~ farmland if block ~ ~.1 ~ #air store success score planted_oh jrv.item.straw_hat run function jrv:item/straw_hat/logic/plant_oh
execute if score planted_oh jrv.item.straw_hat matches 1 run item modify entity @s[gamemode=!creative] weapon.offhand jrv:common/consume
execute if score planted_oh jrv.item.straw_hat matches 1 run playsound item.crop.plant block @s ~ ~ ~
scoreboard players reset planted_oh jrv.item.straw_hat