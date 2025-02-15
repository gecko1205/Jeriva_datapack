advancement revoke @s only jrv:core/item/totem_of_undying/use

execute unless score @s jrv.level matches 10.. run return run function jrv:core/item/totem_of_undying/fail

playsound block.note_block.chime player @a ~ ~ ~ 0.8 1.5
experience add @s -10 levels
title @s actionbar {"translate":"jrv.core.item.totem_of_undying.totem_activated","color":"green"}
tag @s add jrv.core.item.totem_of_undying.active