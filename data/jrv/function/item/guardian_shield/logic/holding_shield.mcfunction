scoreboard players set @s jrv.item.guardian_shield.timer 2

execute store result score mending_lvl jrv.item.guardian_shield run data get entity @s Inventory[{id:"minecraft:shield",components:{"minecraft:custom_data":{item:guardian_shield}}}].components."minecraft:enchantments".levels."minecraft:mending"
execute store result score unbreaking_lvl jrv.item.guardian_shield run data get entity @s Inventory[{id:"minecraft:shield",components:{"minecraft:custom_data":{item:guardian_shield}}}].components."minecraft:enchantments".levels."minecraft:unbreaking"