execute in the_nether as @a[gamemode=!spectator,x=0] unless items entity @s armor.head *[custom_data={item:gas_mask}] at @s run function jrv:core/dimension/the_nether/toxicity/apply_effects

schedule function jrv:core/dimension/the_nether/toxicity/loop 1s