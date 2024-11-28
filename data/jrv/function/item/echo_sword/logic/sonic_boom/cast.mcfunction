summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["jrv.item.echo_sword.axe"],attributes:[{id:"scale",base:0.0625}],HandItems:[{id:"minecraft:wooden_axe",count:1},{}]}
scoreboard players set hold jrv.item.echo_sword -1
scoreboard players set hits jrv.item.echo_sword 0

playsound minecraft:entity.warden.sonic_boom player @a[distance=..20] ~ ~ ~ 2 1 1

tag @s add jrv.item.echo_sword.attacker
scoreboard players reset step jrv.item.echo_sword
scoreboard players set range jrv.item.echo_sword 20

execute anchored eyes positioned ^ ^ ^1 run function jrv:item/echo_sword/logic/sonic_boom/ray

tag @s remove jrv.item.echo_sword.attacker
tag @e remove jrv.item.echo_sword.hit
kill @n[type=armor_stand,tag=jrv.item.echo_sword.axe]

execute if entity @s[gamemode=survival] run function jrv:item/echo_sword/logic/sonic_boom/gamemode

scoreboard players set $strength player_motion.api.launch -8000
function player_motion:api/launch_looking
