advancement revoke @s only jrv:item/invisibility_cloak/unequip
execute unless entity @s[tag=jrv.item.invisibility_cloak.wearing] run return fail

kill @e[type=item,distance=..6,nbt={Item:{components:{"minecraft:custom_data":{invisibility_cloak.disabled:true}}}}]
execute in jrv:vault run function jrv:item/invisibility_cloak/logic/retrieve_inventory

scoreboard players operation cooldown jrv.item.invisibility_cloak = max_ticks jrv.item.invisibility_cloak
scoreboard players operation cooldown jrv.item.invisibility_cloak -= timer jrv.item.invisibility_cloak
scoreboard players reset timer jrv.item.invisibility_cloak

# min cooldown: 3s (60 ticks)
execute unless score cooldown jrv.item.invisibility_cloak matches 60.. run scoreboard players set cooldown jrv.item.invisibility_cloak 60

tag @s remove jrv.item.invisibility_cloak.wearing
particle large_smoke ~ ~.5 ~ .2 .4 .2 0 10 normal @a
playsound item.armor.equip_leather player @a ~ ~ ~ 1 0
effect clear @s invisibility
effect clear @s resistance