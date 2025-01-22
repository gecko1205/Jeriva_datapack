advancement revoke @s only jrv:item/invisibility_cloak/unequip
execute unless entity @s[tag=jrv.item.invisibility_cloak.wearing] run return fail

kill @e[type=item,distance=..6,nbt={Item:{components:{"minecraft:custom_data":{invisibility_cloak.disabled:true}}}}]

execute in jrv:vault run function jrv:item/invisibility_cloak/logic/retrieve_inventory/select_distribution

#attribute @s armor_toughness modifier remove jrv.item.invisibility_cloak.armor_toughness
#attribute @s armor modifier remove jrv.item.invisibility_cloak.armor

scoreboard players operation cooldown jrv.item.invisibility_cloak = timer jrv.item.invisibility_cloak
scoreboard players operation cooldown jrv.item.invisibility_cloak /= 2 jrv.constant
scoreboard players reset timer jrv.item.invisibility_cloak

# min cooldown: 3s (60 ticks)
execute if score cooldown jrv.item.invisibility_cloak matches ..60 run scoreboard players set cooldown jrv.item.invisibility_cloak 60

# max cooldown: 30s (600 ticks)
execute if score cooldown jrv.item.invisibility_cloak matches 600.. run scoreboard players set cooldown jrv.item.invisibility_cloak 600

particle large_smoke ~ ~.5 ~ .2 .4 .2 0 10 normal @a
playsound item.armor.equip_leather player @a ~ ~ ~ 1 0
effect clear @s invisibility
effect clear @s resistance

#execute if predicate jrv:item/invisibility_cloak/has_nausea run scoreboard players set cooldown jrv.item.invisibility_cloak 1200
execute if predicate jrv:item/invisibility_cloak/has_nausea run return run schedule function jrv:item/invisibility_cloak/logic/kill 1t
tag @s remove jrv.item.invisibility_cloak.wearing