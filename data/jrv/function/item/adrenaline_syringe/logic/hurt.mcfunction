advancement revoke @s only jrv:item/adrenaline_syringe/hurt

execute store result score health jrv.item.adrenaline_syringe run data get entity @s Health 10
execute unless score health jrv.item.adrenaline_syringe matches ..50 run return fail

effect give @s minecraft:speed 4 6 true
effect give @s minecraft:night_vision 4 0 true
effect give @s minecraft:strength 4 0 false

playsound jrv:item/adrenaline_syringe/heartbeat master @s ~ ~ ~ 100 1
playsound jrv:item/adrenaline_syringe/flesh master @a ~ ~ ~ 0.7 1.4
playsound minecraft:block.chain.hit master @a ~ ~ ~ 0.8 2

scoreboard players set timer jrv.item.adrenaline_syringe 0

execute if items entity @s weapon.offhand jigsaw[custom_data={item:adrenaline_syringe}] run return run item replace entity @s weapon.offhand with jigsaw[item_model="jrv:adrenaline_syringe/normal",custom_data={item:adrenaline_syringe},item_name='"Seringa de adrenalina"',rarity="epic",use_cooldown={seconds:1,cooldown_group:"adrenaline_syringe"},max_damage=6,damage=6,max_stack_size=1,consumable={animation:"bow",consume_seconds:3,has_consume_particles:false,sound:"block.pointed_dripstone.drip_water"},lore=['{"color":"gray","text":"Recarregue para usar","italic":false}'],use_remainder={id:"jigsaw",components:{item_model:"jrv:adrenaline_syringe/normal",custom_data:{item:adrenaline_syringe},item_name:'"Seringa de adrenalina"',rarity:"epic",use_cooldown:{seconds:1,cooldown_group:"adrenaline_syringe"},max_damage:6,damage:5,max_stack_size:1,lore:['{"color":"gray","text":"Recarregando...","italic":false}']}}] 1
function jrv:item/adrenaline_syringe/logic/replace_empty with entity @s Inventory[{id:"minecraft:jigsaw",components:{"minecraft:custom_data":{item:adrenaline_syringe}}}]