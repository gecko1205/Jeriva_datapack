title @p[predicate=jrv:item/building_wand/has_wand] actionbar {"text":"Operação cancelada","color":"red"}
function jrv:item/building_wand/logic/unequip
execute as @p[predicate=jrv:item/building_wand/has_wand] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0