item modify entity @s[gamemode=!creative] weapon.offhand jrv:common/consume
playsound minecraft:block.trial_spawner.spawn_item block @a ~ ~ ~ 1 1
particle minecraft:trial_spawner_detection_ominous ~ ~ ~ .3 .3 .3 0 10 normal
$particle minecraft:block{block_state: {Name:"$(id)"}} ~ ~ ~ .3 .3 .3 1 30 normal