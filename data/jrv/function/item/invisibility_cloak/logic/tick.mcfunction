execute if score cooldown jrv.item.invisibility_cloak matches 1.. run function jrv:item/invisibility_cloak/logic/cooldown
execute if score cooldown jrv.item.invisibility_cloak matches 0 as @a if items entity @s weapon.* *[custom_data~{item:invisibility_cloak,cooldown:true}] run return run function jrv:item/invisibility_cloak/logic/allow_usage

scoreboard players operation total_seconds jrv.item.invisibility_cloak = timer jrv.item.invisibility_cloak
scoreboard players operation total_seconds jrv.item.invisibility_cloak /= 20 jrv.constant

scoreboard players operation minutes jrv.item.invisibility_cloak = total_seconds jrv.item.invisibility_cloak
scoreboard players operation minutes jrv.item.invisibility_cloak /= 60 jrv.constant

scoreboard players operation extra_seconds jrv.item.invisibility_cloak = minutes jrv.item.invisibility_cloak
scoreboard players operation extra_seconds jrv.item.invisibility_cloak *= 60 jrv.constant

scoreboard players operation seconds jrv.item.invisibility_cloak = total_seconds jrv.item.invisibility_cloak
scoreboard players operation seconds jrv.item.invisibility_cloak -= extra_seconds jrv.item.invisibility_cloak

execute as @a[limit=1,tag=jrv.item.invisibility_cloak.wearing] run function jrv:item/invisibility_cloak/logic/show_timer
execute if score timer jrv.item.invisibility_cloak matches 1.. run return run scoreboard players remove timer jrv.item.invisibility_cloak 1

execute if score timer jrv.item.invisibility_cloak matches 0 as @a[limit=1,tag=jrv.item.invisibility_cloak.wearing] at @s run function jrv:item/invisibility_cloak/logic/unequip