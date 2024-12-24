scoreboard players operation temp jrv.item.sculk_bottle = levels jrv.item.sculk_bottle
scoreboard players operation temp jrv.item.sculk_bottle *= levels jrv.item.sculk_bottle

scoreboard players operation temp jrv.item.sculk_bottle *= 25 jrv.constant

scoreboard players operation temp2 jrv.item.sculk_bottle = levels jrv.item.sculk_bottle
scoreboard players operation temp2 jrv.item.sculk_bottle *= 405 jrv.constant

scoreboard players operation temp jrv.item.sculk_bottle -= temp2 jrv.item.sculk_bottle
scoreboard players operation temp jrv.item.sculk_bottle /= 10 jrv.constant

scoreboard players operation temp jrv.item.sculk_bottle += 360 jrv.constant

scoreboard players operation points jrv.item.sculk_bottle += temp jrv.item.sculk_bottle

execute store result storage jrv:item.sculk_bottle levels int 1 run scoreboard players get levels jrv.item.sculk_bottle
xp set @s 0 levels
xp set @s 0 points