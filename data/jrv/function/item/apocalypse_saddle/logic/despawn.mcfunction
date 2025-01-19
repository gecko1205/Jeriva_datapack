summon item ~ ~ ~ {Item:{id:"jigsaw",count:1,components:{"minecraft:consumable":{consume_seconds:0.5,animation:"brush",sound:"intentionally_empty",has_consume_particles:false},"minecraft:item_model":"jrv:apocalypse_saddle/normal","minecraft:custom_data":{item:apocalypse_saddle},"minecraft:item_name":'{"translate":"jrv.item.apocalypse_saddle","color":"gold"}',"minecraft:tooltip_style":"jrv:exclusive/tooltip","minecraft:use_cooldown":{seconds:3,cooldown_group:"apocalypse_saddle"}}},Tags:["jrv.item.apocalypse_saddle.drop"]}
tp @n[type=item,tag=jrv.item.apocalypse_saddle.drop] @p[distance=..2.5]

particle dust_color_transition{from_color:[0.004,0.051,0.004],scale:4,to_color:[0.110,0.620,0.314]} ~ ~0.4 ~ 0.5 0.6 0.5 2 10 normal @a
playsound minecraft:entity.zombie_horse.ambient neutral @a ~ ~ ~ 0.7 0.7

tp @s ~ -128 ~
kill @s