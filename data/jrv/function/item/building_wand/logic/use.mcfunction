advancement revoke @s only jrv:item/building_wand/use
function jrv:core/replenish_item/main
#---------------------------------------------------------------#

scoreboard players set mode jrv.item.building_wand 0
execute if score pos jrv.item.building_wand matches ..1 unless items entity @s weapon.offhand wheat unless items entity @s weapon.offhand jigsaw unless items entity @s weapon.offhand *[bees|banner_patterns|container|pot_decorations] at @s anchored eyes positioned ^ ^ ^2.5 align xyz positioned ~.5 ~ ~.5 run function jrv:item/building_wand/logic/macro with entity @s Inventory[{Slot:-106b}]

execute unless items entity @s weapon.offhand * at @s anchored eyes positioned ^ ^ ^2.5 align xyz positioned ~.5 ~.5 ~.5 run function jrv:item/building_wand/logic/select/use

execute if score mode jrv.item.building_wand matches 1 at @s anchored eyes positioned ^ ^ ^2.5 align xyz positioned ~.5 ~.5 ~.5 run function jrv:item/building_wand/logic/pass with entity @s Inventory[{Slot:-106b}]

execute if score pos jrv.item.building_wand matches 2 unless items entity @s[predicate=jrv:common/sneaking] weapon.offhand * at @s run function jrv:item/building_wand/logic/select/cancel

execute if score pos jrv.item.building_wand matches 2 if items entity @s weapon.offhand * unless items entity @s weapon.offhand wheat unless items entity @s weapon.offhand jigsaw unless items entity @s weapon.offhand *[bees|banner_patterns|container|pot_decorations] at @s run function jrv:item/building_wand/logic/fill/init with storage jrv:item.building_wand