execute if score minutes jrv.item.invisibility_cloak matches 1.. if score seconds jrv.item.invisibility_cloak matches 10.. run title @s actionbar [{"text":"Cooldown: ","color":"red"},{"score":{"name":"minutes","objective":"jrv.item.invisibility_cloak"},"color":"red"},{"text":":","color":"red"},{"score":{"name":"seconds","objective":"jrv.item.invisibility_cloak"},"color":"red"}]

execute if score minutes jrv.item.invisibility_cloak matches 1.. if score seconds jrv.item.invisibility_cloak matches ..9 run title @s actionbar [{"text":"Cooldown: ","color":"red"},{"score":{"name":"minutes","objective":"jrv.item.invisibility_cloak"},"color":"red"},{"text":":0","color":"red"},{"score":{"name":"seconds","objective":"jrv.item.invisibility_cloak"},"color":"red"}]

execute if score minutes jrv.item.invisibility_cloak matches 0 if score seconds jrv.item.invisibility_cloak matches 10.. run title @s actionbar [{"text":"Cooldown: ","color":"red"},{"score":{"name":"seconds","objective":"jrv.item.invisibility_cloak"},"color":"red"}]

execute if score minutes jrv.item.invisibility_cloak matches 0 if score seconds jrv.item.invisibility_cloak matches ..9 run title @s actionbar [{"text":"Cooldown: ","color":"red"},{"text":"0","color":"red"},{"score":{"name":"seconds","objective":"jrv.item.invisibility_cloak"},"color":"red"}]