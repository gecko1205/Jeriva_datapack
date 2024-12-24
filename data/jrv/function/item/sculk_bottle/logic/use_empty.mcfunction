advancement revoke @s only jrv:item/sculk_bottle/use_empty

execute if entity @s[tag=jrv.item.sculk_bottle] run return fail

execute store result score levels jrv.item.sculk_bottle run xp query @s levels
execute store result score points jrv.item.sculk_bottle run xp query @s points

scoreboard players operation temp jrv.item.sculk_bottle = levels jrv.item.sculk_bottle
scoreboard players operation temp jrv.item.sculk_bottle += points jrv.item.sculk_bottle
execute if score temp jrv.item.sculk_bottle matches 0 run return fail

playsound minecraft:item.bottle.fill_dragonbreath master @s ~ ~ ~ 1 1

function jrv:item/sculk_bottle/logic/calculate/analyse
execute store result storage jrv:item.sculk_bottle points int 1 run scoreboard players get points jrv.item.sculk_bottle

execute if items entity @s weapon.mainhand *[custom_data~{item:"sculk_bottle"}] run return run item modify entity @s weapon.mainhand jrv:sculk_bottle/fill
item modify entity @s weapon.offhand jrv:sculk_bottle/fill