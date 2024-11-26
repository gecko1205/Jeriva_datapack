execute if score pos jrv.item.building_wand matches 1 if predicate jrv:common/sneaking run return run function jrv:item/building_wand/logic/select/cancel
execute if score pos jrv.item.building_wand matches 2 unless predicate jrv:common/sneaking run return run function jrv:item/building_wand/logic/select/error

execute if score pos jrv.item.building_wand matches 0 run return run function jrv:item/building_wand/logic/select/pos1
execute if score pos jrv.item.building_wand matches 1 unless predicate jrv:common/sneaking unless entity @n[type=item_display,distance=...1,tag=jrv.item.building_wand.pos] run return run function jrv:item/building_wand/logic/select/pos2
