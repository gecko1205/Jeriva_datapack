advancement revoke @a only jrv:item/precision_bow/aim
tag @s add jrv.item.precision_bow.aiming
attribute @s minecraft:movement_speed modifier add jrv:item.precision_bow.slow -2 add_value
schedule function jrv:item/precision_bow/logic/stop_aim 2 replace