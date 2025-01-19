scoreboard players operation remaining jrv.item.building_wand = replaceable jrv.item.building_wand
scoreboard players operation remaining jrv.item.building_wand -= available jrv.item.building_wand

playsound minecraft:block.note_block.bass
execute if score remaining jrv.item.building_wand matches 1 run return run tellraw @s [{"translate":"jrv.item.building_wand.one_block_remaining","color":"red"}]
tellraw @s {"translate":"jrv.item.building_wand.blocks_remaining","with":[{"score":{"name":"remaining","objective":"jrv.item.building_wand"}}],"color":"red"}