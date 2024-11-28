damage @s 0.01 mob_attack by @n[type=armor_stand,tag=jrv.item.echo_sword.axe]
damage @s 10 sonic_boom by @p[tag=jrv.item.echo_sword.attacker]

scoreboard players set $strength player_motion.api.launch 10000
function player_motion:api/launch_looking

tag @s add jrv.item.echo_sword.hit