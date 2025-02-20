attribute @s knockback_resistance modifier add jrv.toxicity.knockback_resistance 1 add_value
damage @s 1 jrv:toxicity at ^ ^ ^-1
attribute @s knockback_resistance modifier remove jrv.toxicity.knockback_resistance

effect give @s poison 2 0 true
effect give @s nausea 4 0 true
effect give @s minecraft:mining_fatigue 1 0 true

particle dust{color:[0.239,0.478,0.051],scale:1} ~ ~ ~ 3 3 3 0 10 force @s