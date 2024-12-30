execute store result score random jrv.item.invisibility_cloak run random value 1..100
execute unless score random jrv.item.invisibility_cloak matches 1 run return run function jrv:item/invisibility_cloak/logic/retrieve_inventory/normal

execute store result score random jrv.item.invisibility_cloak run random value 1..3

execute if score random jrv.item.invisibility_cloak matches 1 run return run function jrv:item/invisibility_cloak/logic/retrieve_inventory/random/1
execute if score random jrv.item.invisibility_cloak matches 2 run return run function jrv:item/invisibility_cloak/logic/retrieve_inventory/random/2
execute if score random jrv.item.invisibility_cloak matches 3 run return run function jrv:item/invisibility_cloak/logic/retrieve_inventory/random/3