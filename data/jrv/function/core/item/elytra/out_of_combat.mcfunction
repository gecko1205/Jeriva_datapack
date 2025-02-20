advancement revoke @s only jrv:core/item/elytra/out_of_combat

title @s actionbar [{"text":"⭘ ","color":"green"},{"translate":"jrv.core.item.elytra.enabled","color":"green"},{"text":" ⭘","color":"green"}]
playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 0.7 2
function jrv:core/item/elytra/enable