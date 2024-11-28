advancement revoke @s only jrv:item/echo_sword/hit
scoreboard players add hits jrv.item.echo_sword 1
execute if score hits jrv.item.echo_sword matches 10 run scoreboard players set hold jrv.item.echo_sword 0