advancement revoke @s only jrv:item/echo_sword/use
execute if score hold jrv.item.echo_sword matches 0..9 run scoreboard players add hold jrv.item.echo_sword 2
execute if score hold jrv.item.echo_sword matches 10 run playsound entity.warden.sonic_charge player @a[distance=..20] ~ ~ ~ 2 1 1
execute if score hold jrv.item.echo_sword matches 10 run effect give @a[distance=..20] darkness 3 0 true
execute if score hold jrv.item.echo_sword matches 50.. run function jrv:item/echo_sword/logic/sonic_boom/cast