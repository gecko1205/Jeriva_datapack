advancement revoke @s only jrv:item/guardian_shield/use
tag @s remove jrv.item.guardian_shield.blocked

execute on attacker run playsound minecraft:entity.elder_guardian.hurt player @a ~ ~ ~ 1 1.5
scoreboard players operation damage jrv.item.guardian_shield = @s jrv.item.guardian_shield.blocked
scoreboard players operation damage jrv.item.guardian_shield /= 2 jrv.constant
scoreboard players operation damage jrv.item.guardian_shield /= 10 jrv.constant
execute if score damage jrv.item.guardian_shield matches ..1 run scoreboard players set damage jrv.item.guardian_shield 1
execute store result storage jrv:item.guardian_shield damage int 1 run scoreboard players get damage jrv.item.guardian_shield
execute store result score random jrv.item.guardian_shield run random value 1..100
execute on attacker run function jrv:item/guardian_shield/logic/damage with storage jrv:item.guardian_shield
scoreboard players reset @s jrv.item.guardian_shield.blocked