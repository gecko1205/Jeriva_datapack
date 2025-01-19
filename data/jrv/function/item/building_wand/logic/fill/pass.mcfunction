$fill $(pos1_x) $(pos1_y) $(pos1_z) $(pos2_x) $(pos2_y) $(pos2_z) $(block) replace #air
$clear @s[gamemode=!creative] $(block) $(replaceable)

playsound minecraft:block.trial_spawner.fall block @a
playsound minecraft:block.trial_spawner.eject_item block @a
function jrv:item/building_wand/logic/unequip

execute if score replaceable jrv.item.building_wand matches 1 run return run title @s actionbar {"translate":"jrv.item.building_wand.one_block_filled"}
title @s actionbar {"translate":"jrv.item.building_wand.blocks_filled","with":[{"score":{"name":"replaceable","objective":"jrv.item.building_wand"},"color":"green"}]}