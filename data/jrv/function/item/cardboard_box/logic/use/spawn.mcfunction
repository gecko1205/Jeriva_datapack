tag @s add jrv.item.cardboard_box.carrying
attribute @s minecraft:block_interaction_range modifier add jrv.item.cardboard_box -1 add_multiplied_total
attribute @s minecraft:entity_interaction_range modifier add jrv.item.cardboard_box -0.9 add_multiplied_total

playsound minecraft:block.chiseled_bookshelf.pickup player @a

function jrv:item/cardboard_box/logic/use/generate_id

summon item_display ~ ~ ~ {teleport_duration:1,Tags:["jrv.item.cardboard_box","jrv.item.cardboard_box.display","jrv.item.cardboard_box.no_id"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[.7f,.7f,.7f]},item:{id:"minecraft:jigsaw",count:1,components:{item_model:"jrv:cardboard_box/closed_box"}}}
summon interaction ~ ~ ~ {Tags:["jrv.item.cardboard_box","jrv.item.cardboard_box.interaction","jrv.item.cardboard_box.no_id"],width:0.05f,height:0.05f}
execute in jrv:vault run summon chest_minecart 0 11 0 {Tags:["jrv.item.cardboard_box","jrv.item.cardboard_box.minecart","jrv.item.cardboard_box.no_id"],NoGravity:true,CustomDisplayTile:true}

execute as @e[type=item_display,tag=jrv.item.cardboard_box.no_id,limit=1] run function jrv:item/cardboard_box/logic/use/as_display
execute as @e[type=chest_minecart,tag=jrv.item.cardboard_box.no_id,limit=1] run function jrv:item/cardboard_box/logic/use/as_minecart
setblock ~ ~ ~ air replace

scoreboard players operation @s jrv.item.cardboard_box.id = $random_id jrv.item.cardboard_box.id
scoreboard players operation @e[tag=jrv.item.cardboard_box.no_id] jrv.item.cardboard_box.id = $random_id jrv.item.cardboard_box.id
tag @e[tag=jrv.item.cardboard_box.no_id] remove jrv.item.cardboard_box.no_id