scoreboard players operation total_seconds jrv.item.invisibility_cloak = cooldown jrv.item.invisibility_cloak
scoreboard players operation total_seconds jrv.item.invisibility_cloak /= 20 jrv.constant

scoreboard players operation minutes jrv.item.invisibility_cloak = total_seconds jrv.item.invisibility_cloak
scoreboard players operation minutes jrv.item.invisibility_cloak /= 60 jrv.constant

scoreboard players operation extra_seconds jrv.item.invisibility_cloak = minutes jrv.item.invisibility_cloak
scoreboard players operation extra_seconds jrv.item.invisibility_cloak *= 60 jrv.constant

scoreboard players operation seconds jrv.item.invisibility_cloak = total_seconds jrv.item.invisibility_cloak
scoreboard players operation seconds jrv.item.invisibility_cloak -= extra_seconds jrv.item.invisibility_cloak

execute as @a if items entity @s weapon.* *[custom_data~{item:invisibility_cloak}] run function jrv:item/invisibility_cloak/logic/show_cooldown
execute if score cooldown jrv.item.invisibility_cloak matches 1.. run scoreboard players remove cooldown jrv.item.invisibility_cloak 1
