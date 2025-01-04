execute if entity @s[y_rotation=135..-135] run data modify storage jrv:item.cardboard_box direction set value south
execute if entity @s[y_rotation=-135..-45] run data modify storage jrv:item.cardboard_box direction set value west
execute if entity @s[y_rotation=-45..45] run data modify storage jrv:item.cardboard_box direction set value north
execute if entity @s[y_rotation=45..135] run data modify storage jrv:item.cardboard_box direction set value east