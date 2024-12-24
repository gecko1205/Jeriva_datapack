advancement revoke @s only jrv:item/sculk_bottle/use_full
schedule function jrv:item/sculk_bottle/logic/cooldown 10t
playsound minecraft:entity.experience_orb.pickup master @s
tag @s add jrv.item.sculk_bottle

execute if items entity @s weapon.mainhand *[custom_data~{item:sculk_bottle,full:true}] store result storage jrv:item.sculk_bottle levels int 1 run data get entity @s SelectedItem.components.minecraft:custom_data.levels
execute if items entity @s weapon.mainhand *[custom_data~{item:sculk_bottle,full:true}] store result storage jrv:item.sculk_bottle points int 1 run data get entity @s SelectedItem.components.minecraft:custom_data.points

execute unless items entity @s weapon.mainhand *[custom_data~{item:sculk_bottle,full:true}] store result storage jrv:item.sculk_bottle levels int 1 run data get entity @s Inventory[-1].components.minecraft:custom_data.levels
execute unless items entity @s weapon.mainhand *[custom_data~{item:sculk_bottle,full:true}] store result storage jrv:item.sculk_bottle points int 1 run data get entity @s Inventory[-1].components.minecraft:custom_data.points

function jrv:item/sculk_bottle/logic/add_xp with storage jrv:item.sculk_bottle