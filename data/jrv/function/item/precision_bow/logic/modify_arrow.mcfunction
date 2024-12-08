tag @s add jrv.item.precision_bow.arrow

data modify storage jrv:item.precision_bow motion set from entity @s Motion
execute store result storage jrv:item.precision_bow motion[0] double 0.001 run data get storage jrv:item.precision_bow motion[0] 2000
execute store result storage jrv:item.precision_bow motion[1] double 0.001 run data get storage jrv:item.precision_bow motion[1] 2000
execute store result storage jrv:item.precision_bow motion[2] double 0.001 run data get storage jrv:item.precision_bow motion[2] 2000
data modify entity @s Motion set from storage jrv:item.precision_bow motion

data merge entity @s {NoGravity:true,damage:0.5d,PierceLevel:64b,crit:false,pickup:0b}
scoreboard players set @s jrv.item.precision_bow.timer 0