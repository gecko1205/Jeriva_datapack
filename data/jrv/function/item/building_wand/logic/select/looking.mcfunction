kill @e[type=item_display,tag=jrv.item.building_wand.display,tag=!jrv.item.building_wand.pos,distance=.5..]

summon item_display ~ ~ ~ {Glowing:1b,Tags:["jrv.item.building_wand.display","jrv.item.building_wand.selection"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:paper",count:1,components:{"minecraft:item_model":"jrv:common/transparent_overlay"}}}

execute if score pos jrv.item.building_wand matches 0 run team join jrv.color.gold @n[type=item_display,tag=jrv.item.building_wand.selection]
execute if score pos jrv.item.building_wand matches 1 run team join jrv.color.blue @n[type=item_display,tag=jrv.item.building_wand.selection]