execute if entity @s[y_rotation=135..-135] run return run title @s actionbar {"translate":"jrv.core.item.compass.north","color":"gold"}
execute if entity @s[y_rotation=-135..-45] run return run title @s actionbar {"translate":"jrv.core.item.compass.east","color":"gold"}
execute if entity @s[y_rotation=-45..45] run return run title @s actionbar {"translate":"jrv.core.item.compass.south","color":"gold"}
title @s actionbar {"translate":"jrv.core.item.compass.west","color":"gold"}