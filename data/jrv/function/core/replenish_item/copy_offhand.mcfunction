data modify storage jrv:core replenish_item.slot set value offhand
data modify storage jrv:core replenish_item.use_remainder set from entity @s Inventory[{Slot:-106b}]

function jrv:core/replenish_item/modify_item with storage jrv:core replenish_item