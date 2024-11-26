data modify storage jrv:item.building_wand block set from entity @s Inventory[-1].id

$fill $(pos1_x) $(pos1_y) $(pos1_z) $(pos2_x) $(pos2_y) $(pos2_z) structure_void replace #air
$execute store result score replaceable jrv.item.building_wand run fill $(pos1_x) $(pos1_y) $(pos1_z) $(pos2_x) $(pos2_y) $(pos2_z) air replace structure_void
execute store result storage jrv:item.building_wand replaceable int 1 run scoreboard players get replaceable jrv.item.building_wand

function jrv:item/building_wand/logic/fill/check_items with storage jrv:item.building_wand
function jrv:item/building_wand/logic/fill/check_for_players with storage jrv:item.building_wand

execute unless score available jrv.item.building_wand >= replaceable jrv.item.building_wand run return run function jrv:item/building_wand/logic/fill/not_enough_items
execute if score has_players jrv.item.building_wand matches 1 run return run function jrv:item/building_wand/logic/fill/players_in_selecion
execute if score available jrv.item.building_wand >= replaceable jrv.item.building_wand run return run function jrv:item/building_wand/logic/fill/pass with storage jrv:item.building_wand