particle dust_color_transition{from_color:[0.004,0.051,0.004],scale:4,to_color:[0.110,0.620,0.314]} ~ ~0.4 ~ 0.6 0.8 0.6 2 20 normal @a
playsound minecraft:entity.zombie_horse.ambient neutral @a ~ ~ ~ 1 2

summon zombie_horse ~ ~ ~ {Invulnerable:1b,DeathLootTable:"minecraft:empty",NoAI:1b,Health:1f,Tame:1b,Tags:["jrv.item.apocalypse_saddle.horse","jrv.item.apocalypse_saddle.safe"],attributes:[{id:"minecraft:jump_strength",base:0.6},{id:"minecraft:max_health",base:1},{id:"minecraft:movement_speed",base:0.4}],SaddleItem:{id:"minecraft:saddle",count:1b,components:{custom_data:{jrv.item.apocalypse_saddle.saddle_item:true},item_model:"jrv:apocalypse_saddle/normal",item_name:'{"translate":"jrv.item.apocalypse_saddle","color":"gold"}',tooltip_style:"jrv:exclusive/tooltip"}}}
ride @s mount @n[type=zombie_horse,distance=..2,tag=jrv.item.apocalypse_saddle.horse]
tag @n[type=zombie_horse,distance=..2,tag=jrv.item.apocalypse_saddle.safe] remove jrv.item.apocalypse_saddle.safe