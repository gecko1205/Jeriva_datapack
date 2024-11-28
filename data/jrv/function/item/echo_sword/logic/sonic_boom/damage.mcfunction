damage @s 0.01 mob_attack by @n[type=armor_stand,tag=jrv.item.echo_sword.axe]
damage @s 10 sonic_boom by @p[tag=jrv.item.echo_sword.attacker]

tag @s remove jrv.item.echo_sword.hit
tag @a remove jrv.item.echo_sword.attacker
kill @n[type=armor_stand,tag=jrv.item.echo_sword.axe]