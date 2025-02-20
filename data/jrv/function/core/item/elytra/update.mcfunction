advancement revoke @s only jrv:core/item/elytra/inventory_update
advancement revoke @s only jrv:core/item/elytra/exited_nether

execute in minecraft:the_nether if entity @s[dx=0] run return run function jrv:core/item/elytra/disable
execute if entity @s[scores={jrv.time_since_player_hurt=200..}] run return run function jrv:core/item/elytra/enable
function jrv:core/item/elytra/disable