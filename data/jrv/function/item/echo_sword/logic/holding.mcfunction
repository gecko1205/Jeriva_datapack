execute if score hold jrv.item.echo_sword matches -1 if score kills jrv.item.echo_sword matches 0 run title @s actionbar {"text":"• • • • • • • • • •","color":"dark_gray"}
execute if score hold jrv.item.echo_sword matches -1 if score kills jrv.item.echo_sword matches 1 run title @s actionbar ["",{"text":"• ","color":"#2bd9e0"},{"text":"• • • • • • • • •","color":"dark_gray"}]
execute if score hold jrv.item.echo_sword matches -1 if score kills jrv.item.echo_sword matches 2 run title @s actionbar ["",{"text":"• • ","color":"#2bd9e0"},{"text":"• • • • • • • •","color":"dark_gray"}]
execute if score hold jrv.item.echo_sword matches -1 if score kills jrv.item.echo_sword matches 3 run title @s actionbar ["",{"text":"• • • ","color":"#2bd9e0"},{"text":"• • • • • • •","color":"dark_gray"}]
execute if score hold jrv.item.echo_sword matches -1 if score kills jrv.item.echo_sword matches 4 run title @s actionbar ["",{"text":"• • • • ","color":"#2bd9e0"},{"text":"• • • • • •","color":"dark_gray"}]
execute if score hold jrv.item.echo_sword matches -1 if score kills jrv.item.echo_sword matches 5 run title @s actionbar ["",{"text":"• • • • • ","color":"#2bd9e0"},{"text":"• • • • •","color":"dark_gray"}]
execute if score hold jrv.item.echo_sword matches -1 if score kills jrv.item.echo_sword matches 6 run title @s actionbar ["",{"text":"• • • • • • ","color":"#2bd9e0"},{"text":"• • • •","color":"dark_gray"}]
execute if score hold jrv.item.echo_sword matches -1 if score kills jrv.item.echo_sword matches 7 run title @s actionbar ["",{"text":"• • • • • • • ","color":"#2bd9e0"},{"text":"• • •","color":"dark_gray"}]
execute if score hold jrv.item.echo_sword matches -1 if score kills jrv.item.echo_sword matches 8 run title @s actionbar ["",{"text":"• • • • • • • • ","color":"#2bd9e0"},{"text":"• •","color":"dark_gray"}]
execute if score hold jrv.item.echo_sword matches -1 if score kills jrv.item.echo_sword matches 9 run title @s actionbar ["",{"text":"• • • • • • • • • ","color":"#2bd9e0"},{"text":"•","color":"dark_gray"}]
execute if score hold jrv.item.echo_sword matches 0 run title @s actionbar ["",{"text":"• • • • • • • • • •","color":"#2bd9e0"}]
execute if score hold jrv.item.echo_sword matches 1..49 run title @s actionbar {"translate":"jrv.item.echo_sword.charging","color":"#2bd9e0"}
execute if score hold jrv.item.echo_sword matches 50.. run title @s actionbar {"translate":"jrv.item.echo_sword.ready","color":"#2bd9e0"}
