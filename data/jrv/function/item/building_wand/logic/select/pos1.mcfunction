scoreboard players add pos jrv.item.building_wand 1
title @s actionbar {"text":"Primeira posição definida","color":"gold"}
item modify entity @s weapon.mainhand jrv:building_wand/pos2
playsound minecraft:entity.arrow.hit_player block @a ~ ~ ~

summon item_display ~ ~ ~ {Glowing:1b,Tags:["jrv.item.building_wand.display","jrv.item.building_wand.pos1","jrv.item.building_wand.pos"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:paper",count:1,components:{"minecraft:item_model":"jrv:common/gold_overlay"}}}
team join jrv.color.gold @n[type=item_display,tag=jrv.item.building_wand.pos1]

execute store result storage jrv:item.building_wand pos1_x int 1 run data get entity @n[type=item_display,tag=jrv.item.building_wand.pos1] Pos[0]
execute store result storage jrv:item.building_wand pos1_y int 1 run data get entity @n[type=item_display,tag=jrv.item.building_wand.pos1] Pos[1]
execute store result storage jrv:item.building_wand pos1_z int 1 run data get entity @n[type=item_display,tag=jrv.item.building_wand.pos1] Pos[2]

execute store result score pos1.x jrv.item.building_wand run data get entity @n[type=item_display,tag=jrv.item.building_wand.pos1] Pos[0]
execute store result score pos1.y jrv.item.building_wand run data get entity @n[type=item_display,tag=jrv.item.building_wand.pos1] Pos[1]
execute store result score pos1.z jrv.item.building_wand run data get entity @n[type=item_display,tag=jrv.item.building_wand.pos1] Pos[2]

