$damage @s $(damage) minecraft:thorns by @p
#execute at @s run playsound minecraft:enchant.thorns.hit player @a ~ ~ ~ 1 1

execute unless score random jrv.item.guardian_shield matches ..20 on attacker run return fail

effect give @s minecraft:slowness 2 9
effect give @s minecraft:mining_fatigue 3 4
playsound minecraft:entity.elder_guardian.curse player @a ~ ~ ~ 1 1
execute if score random jrv.item.guardian_shield matches 11..20 at @s run rotate @s ~10 ~
execute if score random jrv.item.guardian_shield matches 1..10 at @s run rotate @s ~-10 ~
execute if entity @s[type=!player] run effect give @s minecraft:slowness 3 20

attribute @s jump_strength modifier add jrv.item.guardian_shield -999 add_value
schedule function jrv:item/guardian_shield/logic/revert_jump 2s replace