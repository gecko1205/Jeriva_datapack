function jrv:item/cardboard_box/logic/place/get_player_id

playsound minecraft:block.chiseled_bookshelf.pickup player @a
playsound minecraft:block.wood.place block @a
execute align xyz run particle item{item:{id:"minecraft:jigsaw",components:{"minecraft:item_model":"jrv:cardboard_box/closed_box"}}} ~.5 ~.5 ~.5 .5 .5 .5 0.1 30
tag @s remove jrv.item.cardboard_box.carrying
scoreboard players reset @s jrv.item.cardboard_box.id
attribute @s minecraft:block_interaction_range modifier remove jrv.item.cardboard_box
attribute @s minecraft:entity_interaction_range modifier remove jrv.item.cardboard_box