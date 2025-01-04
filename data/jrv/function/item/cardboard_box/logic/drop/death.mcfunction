advancement revoke @s only jrv:item/cardboard_box/death

execute store result storage jrv:item.cardboard_box id int 1 run scoreboard players get @s jrv.item.cardboard_box.id
execute at @s run function jrv:item/cardboard_box/logic/drop/select_group with storage jrv:item.cardboard_box

tag @s remove jrv.item.cardboard_box.carrying
scoreboard players reset @s jrv.item.cardboard_box.id
attribute @s minecraft:block_interaction_range modifier remove jrv.item.cardboard_box
attribute @s minecraft:entity_interaction_range modifier remove jrv.item.cardboard_box