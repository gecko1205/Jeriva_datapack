execute if score cooldown jrv.item.invisibility_cloak matches 1.. run function jrv:item/invisibility_cloak/logic/cooldown
execute if score cooldown jrv.item.invisibility_cloak matches 0 as @a if items entity @s weapon.* *[custom_data~{item:invisibility_cloak,cooldown:true}] run return run function jrv:item/invisibility_cloak/logic/allow_usage

execute if score timer jrv.item.invisibility_cloak matches ..600 run return run scoreboard players add timer jrv.item.invisibility_cloak 1