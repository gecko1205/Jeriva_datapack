execute as @e[tag=jrv.item.echo_sword.hit] run function jrv:item/echo_sword/logic/sonic_boom/damage
tag @a remove jrv.item.echo_sword.attacker
kill @n[type=armor_stand,tag=jrv.item.echo_sword.axe]