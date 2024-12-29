execute if score jump_delay jrv.item.wind_boots matches 1.. run scoreboard players remove jump_delay jrv.item.wind_boots 1

execute unless score jump_delay jrv.item.wind_boots matches -1 as @a if score @s jrv.item.wind_boots.jump matches 1.. run scoreboard players set jump_delay jrv.item.wind_boots 4
scoreboard players reset @a jrv.item.wind_boots.jump