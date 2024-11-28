execute if score hold jrv.item.echo_sword matches 10..50 run scoreboard players add hold jrv.item.echo_sword 2
execute if score hold jrv.item.echo_sword matches 1..50 run scoreboard players remove hold jrv.item.echo_sword 1

execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{item:echo_sword}}}}] run function jrv:item/echo_sword/logic/holding