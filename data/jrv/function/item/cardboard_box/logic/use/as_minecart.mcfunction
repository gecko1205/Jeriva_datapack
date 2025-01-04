data modify entity @e[type=chest_minecart,tag=jrv.item.cardboard_box.no_id,limit=1] Items set from block ~ ~ ~ Items
data modify entity @e[type=chest_minecart,tag=jrv.item.cardboard_box.no_id,limit=1] CustomName set from block ~ ~ ~ CustomName

execute if block ~ ~ ~ chest run return run data modify entity @s DisplayState set value {Name:"chest"}
execute if block ~ ~ ~ trapped_chest run return run data modify entity @s DisplayState set value {Name:"trapped_chest"}
execute if block ~ ~ ~ barrel run return run data modify entity @s DisplayState set value {Name:"barrel"}