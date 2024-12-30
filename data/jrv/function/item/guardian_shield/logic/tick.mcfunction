scoreboard players remove @a[scores={jrv.item.guardian_shield.timer=1..}] jrv.item.guardian_shield.timer 1
execute as @a if items entity @s weapon.* shield[custom_data~{item:guardian_shield}] run function jrv:item/guardian_shield/logic/holding_shield

execute as @a[scores={jrv.item.guardian_shield.break=1..,jrv.item.guardian_shield.timer=1..}] at @s run function jrv:item/guardian_shield/logic/break/copy_enchantments

scoreboard players reset @a jrv.item.guardian_shield.break

execute as @a if items entity @s weapon.mainhand *[custom_data~{item:guardian_shield,broken:true}] unless items entity @s weapon.mainhand *[damage=168] run item modify entity @s weapon.mainhand jrv:guardian_shield/convert_to_shield
execute as @a if items entity @s weapon.offhand *[custom_data~{item:guardian_shield,broken:true}] unless items entity @s weapon.offhand *[damage=168] run item modify entity @s weapon.offhand jrv:guardian_shield/convert_to_shield