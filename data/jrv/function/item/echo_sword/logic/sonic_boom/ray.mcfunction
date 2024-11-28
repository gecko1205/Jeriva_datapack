particle minecraft:sonic_boom
execute as @e[distance=..2.5,tag=!jrv.item.echo_sword.attacker,tag=!jrv.item.echo_sword.hit,tag=!jrv.item.echo_sword.axe] at @p[tag=jrv.item.echo_sword.attacker] facing entity @s eyes run function jrv:item/echo_sword/logic/sonic_boom/hit
scoreboard players add step jrv.item.echo_sword 1
execute if score step jrv.item.echo_sword < range jrv.item.echo_sword positioned ^ ^ ^1 run function jrv:item/echo_sword/logic/sonic_boom/ray