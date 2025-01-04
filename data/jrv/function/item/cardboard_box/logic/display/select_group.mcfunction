$execute as @a[scores={jrv.item.cardboard_box.id=$(id)},limit=1,gamemode=!spectator] at @s anchored eyes run return run function jrv:item/cardboard_box/logic/display/as_player {id:$(id)}

$execute as @e[tag=jrv.item.cardboard_box,scores={jrv.item.cardboard_box.id=$(id)}] in jrv:vault run tp @s 0 10 0
execute in jrv:vault run tp @s 0 10 0