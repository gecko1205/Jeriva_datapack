execute if score pos1.x jrv.item.building_wand > pos2.x jrv.item.building_wand run scoreboard players operation pos1.x jrv.item.building_wand >< pos2.x jrv.item.building_wand
execute if score pos1.y jrv.item.building_wand > pos2.y jrv.item.building_wand run scoreboard players operation pos1.y jrv.item.building_wand >< pos2.y jrv.item.building_wand
execute if score pos1.z jrv.item.building_wand > pos2.z jrv.item.building_wand run scoreboard players operation pos1.z jrv.item.building_wand >< pos2.z jrv.item.building_wand

scoreboard players operation dx jrv.item.building_wand = pos2.x jrv.item.building_wand
scoreboard players operation dx jrv.item.building_wand -= pos1.x jrv.item.building_wand

scoreboard players operation sx jrv.item.building_wand = dx jrv.item.building_wand
scoreboard players operation sx jrv.item.building_wand += 1 jrv.constant

scoreboard players operation dy jrv.item.building_wand = pos2.y jrv.item.building_wand
scoreboard players operation dy jrv.item.building_wand -= pos1.y jrv.item.building_wand

scoreboard players operation sy jrv.item.building_wand = dy jrv.item.building_wand
scoreboard players operation sy jrv.item.building_wand += 1 jrv.constant

scoreboard players operation dz jrv.item.building_wand = pos2.z jrv.item.building_wand
scoreboard players operation dz jrv.item.building_wand -= pos1.z jrv.item.building_wand

scoreboard players operation sz jrv.item.building_wand = dz jrv.item.building_wand
scoreboard players operation sz jrv.item.building_wand += 1 jrv.constant

scoreboard players operation vol jrv.item.building_wand = sx jrv.item.building_wand
scoreboard players operation vol jrv.item.building_wand *= sy jrv.item.building_wand
scoreboard players operation vol jrv.item.building_wand *= sz jrv.item.building_wand

execute store result storage jrv:item.building_wand pos1_x int 1 run scoreboard players get pos1.x jrv.item.building_wand
execute store result storage jrv:item.building_wand pos1_y int 1 run scoreboard players get pos1.y jrv.item.building_wand
execute store result storage jrv:item.building_wand pos1_z int 1 run scoreboard players get pos1.z jrv.item.building_wand
execute store result storage jrv:item.building_wand pos2_x int 1 run scoreboard players get pos2.x jrv.item.building_wand
execute store result storage jrv:item.building_wand pos2_y int 1 run scoreboard players get pos2.y jrv.item.building_wand
execute store result storage jrv:item.building_wand pos2_z int 1 run scoreboard players get pos2.z jrv.item.building_wand

execute store result storage jrv:item.building_wand dx int 1 run scoreboard players get dx jrv.item.building_wand
execute store result storage jrv:item.building_wand dy int 1 run scoreboard players get dy jrv.item.building_wand
execute store result storage jrv:item.building_wand dz int 1 run scoreboard players get dz jrv.item.building_wand

execute store result storage jrv:item.building_wand sx int 1 run scoreboard players get sx jrv.item.building_wand
execute store result storage jrv:item.building_wand sy int 1 run scoreboard players get sy jrv.item.building_wand
execute store result storage jrv:item.building_wand sz int 1 run scoreboard players get sz jrv.item.building_wand

execute store result storage jrv:item.building_wand vol int 1 run scoreboard players get vol jrv.item.building_wand