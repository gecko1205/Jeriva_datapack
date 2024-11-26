execute if score pos jrv.item.building_wand matches ..1 as @a[gamemode=!spectator,nbt={SelectedItem:{id:"minecraft:jigsaw",components:{"minecraft:custom_data":{item:building_wand}}}}] at @s anchored eyes positioned ^ ^ ^2.5 align xyz positioned ~.5 ~.5 ~.5 if block ~ ~ ~ #replaceable unless entity @n[type=item_display,distance=...5,tag=jrv.item.building_wand.display] if items entity @s weapon.offhand * unless items entity @s weapon.offhand wheat unless items entity @s weapon.offhand *[bees|banner_patterns|container|pot_decorations] run function jrv:item/building_wand/logic/looking

execute if score pos jrv.item.building_wand matches ..1 as @a[gamemode=!spectator,nbt={SelectedItem:{id:"minecraft:jigsaw",components:{"minecraft:custom_data":{item:building_wand}}}}] at @s anchored eyes positioned ^ ^ ^2.5 align xyz positioned ~.5 ~.5 ~.5 unless entity @n[type=item_display,distance=...5,tag=jrv.item.building_wand.display] unless items entity @s weapon.offhand * run function jrv:item/building_wand/logic/select/looking

execute as @e[type=item_display,tag=jrv.item.building_wand.block] at @s unless block ~ ~ ~ #replaceable run kill @s

execute if score pos jrv.item.building_wand matches 2 as @a[gamemode=!spectator,nbt={SelectedItem:{id:"minecraft:jigsaw",components:{"minecraft:custom_data":{item:building_wand}}}}] if items entity @s weapon.offhand * unless items entity @s weapon.offhand wheat unless items entity @s weapon.offhand *[bees|banner_patterns|container|pot_decorations] run title @s actionbar {"text":"Use para preencher com bloco escolhido","color":"green"}

execute if score pos jrv.item.building_wand matches 1 unless entity @a[gamemode=!spectator,nbt={SelectedItem:{id:"minecraft:jigsaw",components:{"minecraft:custom_data":{item:building_wand}}}}] if entity @n[type=item_display,tag=jrv.item.building_wand.display] run function jrv:item/building_wand/logic/select/too_far

execute if score pos jrv.item.building_wand matches ..1 unless entity @a[gamemode=!spectator,nbt={SelectedItem:{id:"minecraft:jigsaw",components:{"minecraft:custom_data":{item:building_wand}}}}] if entity @n[type=item_display,tag=jrv.item.building_wand.display] run function jrv:item/building_wand/logic/unequip

execute if score pos jrv.item.building_wand matches 1 if items entity @a[gamemode=!spectator,nbt={SelectedItem:{id:"minecraft:jigsaw",components:{"minecraft:custom_data":{item:building_wand}}}}] weapon.offhand * if entity @n[type=item_display,tag=jrv.item.building_wand.display] run function jrv:item/building_wand/logic/unequip

execute at @e[type=item_display,tag=jrv.item.building_wand.pos] unless entity @p[distance=..2310,predicate=jrv:item/building_wand/has_wand] run function jrv:item/building_wand/logic/select/too_far

execute if score pos jrv.item.building_wand matches 0 unless items entity @a[gamemode=!spectator,nbt={SelectedItem:{id:"minecraft:jigsaw",components:{"minecraft:custom_data":{item:building_wand}}}}] weapon.offhand * run item modify entity @a[gamemode=!spectator,nbt={SelectedItem:{id:"minecraft:jigsaw",components:{"minecraft:custom_data":{item:building_wand}}}}] weapon.mainhand jrv:building_wand/pos1 

execute if score pos jrv.item.building_wand matches 0 if items entity @a[gamemode=!spectator,nbt={SelectedItem:{id:"minecraft:jigsaw",components:{"minecraft:custom_data":{item:building_wand}}}}] weapon.offhand * run item modify entity @a[gamemode=!spectator,nbt={SelectedItem:{id:"minecraft:jigsaw",components:{"minecraft:custom_data":{item:building_wand}}}}] weapon.mainhand jrv:building_wand/normal 

execute as @a[predicate=jrv:item/building_wand/has_wand] if items entity @s weapon.offhand jigsaw[custom_data={item:building_wand}] run item modify entity @s weapon.offhand jrv:building_wand/normal