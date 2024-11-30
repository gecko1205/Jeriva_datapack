scoreboard players reset cooldown jrv.item.invisibility_cloak
title @s actionbar {"text":""}

execute if items entity @s weapon.mainhand *[custom_data~{item:invisibility_cloak,cooldown:true}] run return run item modify entity @s weapon.mainhand jrv:invisibility_cloak/allow_usage
item modify entity @s weapon.offhand jrv:invisibility_cloak/allow_usage