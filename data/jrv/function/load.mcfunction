tellraw @a {"text":"Reloaded!","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"JeriváCraft","color":"gold","bold":true}]}}

data merge storage jrv:default {object:{}, list:[], false:false, true:true, string:""}
scoreboard objectives add jrv.rewards dummy
scoreboard objectives add jrv.constant dummy
scoreboard players set 1 jrv.constant 1
scoreboard players set 2 jrv.constant 2
scoreboard players set 3 jrv.constant 4
scoreboard players set 6 jrv.constant 6
scoreboard players set 10 jrv.constant 10
scoreboard players set 25 jrv.constant 25
scoreboard players set 64 jrv.constant 64
scoreboard players set 100 jrv.constant 100
scoreboard players set 360 jrv.constant 360
scoreboard players set 405 jrv.constant 405
scoreboard players set 1625 jrv.constant 1625
scoreboard players set 2220 jrv.constant 2220
scoreboard players set 24000 jrv.constant 24000

execute in overworld run forceload add 0 0
execute in the_nether run forceload add 0 0
execute in the_end run forceload add 0 0

team add jrv.color.light_purple
team modify jrv.color.light_purple color light_purple
team add jrv.color.red
team modify jrv.color.red color red
team add jrv.color.blue
team modify jrv.color.blue color blue
team add jrv.color.gold
team modify jrv.color.gold color gold

scoreboard objectives add jrv.item.building_wand dummy
scoreboard players set pos jrv.item.building_wand 0

scoreboard objectives add jrv.item.echo_sword dummy
scoreboard players set kills jrv.item.echo_sword 0
scoreboard players set hold jrv.item.echo_sword -1

scoreboard objectives add jrv.item.magnet dummy
scoreboard objectives add jrv.item.straw_hat dummy