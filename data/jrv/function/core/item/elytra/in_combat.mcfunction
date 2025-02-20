execute unless items entity @s armor.chest minecraft:elytra[minecraft:glider] run return fail

title @s actionbar [{"text":"⚠ ","color":"red"},{"translate":"jrv.core.item.elytra.disabled","color":"red"},{"text":" ⚠","color":"red"}]

playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~ 0.7 0
function jrv:core/item/elytra/disable