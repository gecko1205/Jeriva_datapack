execute if score @s jrv.item.precision_bow.timer matches 60.. run particle poof ~ ~ ~ 0 0 0 0.1 3 force
execute if score @s jrv.item.precision_bow.timer matches 60.. run kill @s
scoreboard players add @s jrv.item.precision_bow.timer 1