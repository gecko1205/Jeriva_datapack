execute store result score $random_id jrv.item.cardboard_box.id run random value 0..9999

execute as @a if score @s jrv.item.cardboard_box.id = $random_id jrv.item.cardboard_box.id run function jrv:item/cardboard_box/logic/use/generate_id