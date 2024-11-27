scoreboard players add pos jrv.item.building_wand 1
title @s actionbar {"text":"Segunda posição definida","color":"blue"}
item modify entity @s weapon.mainhand jrv:building_wand/normal
playsound minecraft:entity.arrow.hit_player block @a ~ ~ ~

summon item_display ~ ~ ~ {Glowing:1b,Tags:["jrv.item.building_wand.display","jrv.item.building_wand.pos2","jrv.item.building_wand.pos"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:paper",count:1,components:{"minecraft:item_model":"jrv:common/blue_overlay"}}}
team join jrv.color.blue @n[type=item_display,tag=jrv.item.building_wand.pos2]

execute store result storage jrv:item.building_wand pos2_x int 1 run data get entity @n[type=item_display,tag=jrv.item.building_wand.pos2] Pos[0]
execute store result storage jrv:item.building_wand pos2_y int 1 run data get entity @n[type=item_display,tag=jrv.item.building_wand.pos2] Pos[1]
execute store result storage jrv:item.building_wand pos2_z int 1 run data get entity @n[type=item_display,tag=jrv.item.building_wand.pos2] Pos[2]

execute store result score pos2.x jrv.item.building_wand run data get entity @n[type=item_display,tag=jrv.item.building_wand.pos2] Pos[0]
execute store result score pos2.y jrv.item.building_wand run data get entity @n[type=item_display,tag=jrv.item.building_wand.pos2] Pos[1]
execute store result score pos2.z jrv.item.building_wand run data get entity @n[type=item_display,tag=jrv.item.building_wand.pos2] Pos[2]

#preview
function jrv:item/building_wand/logic/fill/calculate_volume
function jrv:item/building_wand/logic/fill/preview with storage jrv:item.building_wand