advancement revoke @s only jrv:item/invisibility_cloak/use

particle large_smoke ~ ~.5 ~ .2 .4 .2 0 10 normal @a
effect give @s invisibility infinite 0 true
effect give @s resistance infinite 255 true
playsound item.armor.equip_leather player @a[distance=..4.5] ~ ~ ~ 1 0

execute if items entity @s weapon.mainhand *[custom_data~{item:invisibility_cloak}] run item modify entity @s weapon.mainhand jrv:invisibility_cloak/item_cooldown
execute if items entity @s weapon.offhand *[custom_data~{item:invisibility_cloak}] run item modify entity @s weapon.offhand jrv:invisibility_cloak/item_cooldown

execute in jrv:vault run function jrv:item/invisibility_cloak/logic/save_inventory
function jrv:item/invisibility_cloak/logic/disable_slots

# seconds * 20
scoreboard players set max_ticks jrv.item.invisibility_cloak 3600
scoreboard players operation timer jrv.item.invisibility_cloak = max_ticks jrv.item.invisibility_cloak

tag @s add jrv.item.invisibility_cloak.wearing