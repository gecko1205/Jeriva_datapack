execute if predicate jrv:common/sneaking run particle dust_plume ^ ^ ^.2 0 0 0 0.1 4 normal @a
execute if predicate jrv:common/sneaking run return run playsound item.shield.block player @a ~ ~ ~ 0.75 0

attribute @s minecraft:gravity modifier add jrv.item.range_lasso 1 add_value
scoreboard players set $strength player_motion.api.launch 400
scoreboard players operation $strength player_motion.api.launch *= step jrv.item.range_lasso
function player_motion:api/launch_looking
schedule function jrv:item/range_lasso/logic/revert_gravity 5t