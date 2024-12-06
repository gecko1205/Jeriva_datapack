scoreboard players remove @a[scores={jrv.item.guardian_shield.timer=1..}] jrv.item.guardian_shield.timer 1
execute as @a if items entity @s weapon.* shield[custom_data~{item:guardian_shield}] run scoreboard players set @s jrv.item.guardian_shield.timer 2

execute as @a[scores={jrv.item.guardian_shield.break=1..,jrv.item.guardian_shield.timer=1..}] at @s run function jrv:item/guardian_shield/logic/break
scoreboard players reset @a jrv.item.guardian_shield.break

execute as @a if items entity @s weapon.mainhand *[custom_data~{item:guardian_shield,broken:true}] unless items entity @s weapon.mainhand *[damage=336] run function jrv:item/guardian_shield/logic/replace {slot:mainhand}
execute as @a if items entity @s weapon.offhand *[custom_data~{item:guardian_shield,broken:true}] unless items entity @s weapon.offhand *[damage=336] run function jrv:item/guardian_shield/logic/replace {slot:offhand}