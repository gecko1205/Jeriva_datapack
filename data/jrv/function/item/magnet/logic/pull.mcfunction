execute as @p store result score open_slot jrv.item.magnet run function jrv:item/magnet/logic/check_slots
execute if score open_slot jrv.item.magnet matches 1 run tp @s ~ ~ ~