playsound minecraft:block.metal.fall master @a ~ ~ ~ 2 0
playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 2 0
playsound minecraft:entity.allay.item_taken master @a ~ ~ ~ 2 0
playsound minecraft:entity.evoker.prepare_attack master @a ~ ~ ~ 2 0
playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 2 2
particle minecraft:flash ~ ~1.8 ~ 0 0 0 0 0
effect give @a[distance=..16] blindness 1 0 true

setblock ~ ~ ~ end_gateway
data merge block ~ ~ ~ {Age:-9223372036854775808L}
summon shulker ~ ~ ~ {Invulnerable:true,Color:15,NoAI:true,Silent:true,DeathLootTable:"intentionally_empty",Tags:["jrv.structure.thing"]}
effect give @n[type=shulker,tag=jrv.structure.thing] invisibility infinite 0 true

particle end_rod ~0 ~1 ~-4.5 0 0 0 0 1
particle end_rod ~0.9356 ~1 ~-4.40166 0 0 0 0 1
particle end_rod ~1.83031 ~1 ~-4.11095 0 0 0 0 1
particle end_rod ~2.64503 ~1 ~-3.64058 0 0 0 0 1
particle end_rod ~3.34415 ~1 ~-3.01109 0 0 0 0 1
particle end_rod ~3.89711 ~1 ~-2.25 0 0 0 0 1
particle end_rod ~4.27975 ~1 ~-1.39058 0 0 0 0 1
particle end_rod ~4.47535 ~1 ~-0.47038 0 0 0 0 1
particle end_rod ~4.47535 ~1 ~0.47038 0 0 0 0 1
particle end_rod ~4.27975 ~1 ~1.39058 0 0 0 0 1
particle end_rod ~3.89711 ~1 ~2.25 0 0 0 0 1
particle end_rod ~3.34415 ~1 ~3.01109 0 0 0 0 1
particle end_rod ~2.64503 ~1 ~3.64058 0 0 0 0 1
particle end_rod ~1.83031 ~1 ~4.11095 0 0 0 0 1
particle end_rod ~0.9356 ~1 ~4.40166 0 0 0 0 1
particle end_rod ~0 ~1 ~4.5 0 0 0 0 1
particle end_rod ~-0.9356 ~1 ~4.40166 0 0 0 0 1
particle end_rod ~-1.83031 ~1 ~4.11095 0 0 0 0 1
particle end_rod ~-2.64503 ~1 ~3.64058 0 0 0 0 1
particle end_rod ~-3.34415 ~1 ~3.01109 0 0 0 0 1
particle end_rod ~-3.89711 ~1 ~2.25 0 0 0 0 1
particle end_rod ~-4.27975 ~1 ~1.39058 0 0 0 0 1
particle end_rod ~-4.47535 ~1 ~0.47038 0 0 0 0 1
particle end_rod ~-4.47535 ~1 ~-0.47038 0 0 0 0 1
particle end_rod ~-4.27975 ~1 ~-1.39058 0 0 0 0 1
particle end_rod ~-3.89711 ~1 ~-2.25 0 0 0 0 1
particle end_rod ~-3.34415 ~1 ~-3.01109 0 0 0 0 1
particle end_rod ~-2.64503 ~1 ~-3.64058 0 0 0 0 1
particle end_rod ~-1.83031 ~1 ~-4.11095 0 0 0 0 1
particle end_rod ~-0.9356 ~1 ~-4.40166 0 0 0 0 1

execute positioned ~ ~0.9 ~ run summon armor_stand ~ ~ ~ {Small:true,Invisible:true,Invulnerable:true,Marker:true,Tags:["jrv.structure.thing"],UUID:[I;12,0,0,1]}
execute positioned ~ ~0.9 ~ run summon armor_stand ~ ~ ~ {Small:true,Invisible:true,Invulnerable:true,Marker:true,Tags:["jrv.structure.thing"],UUID:[I;12,0,0,2]}