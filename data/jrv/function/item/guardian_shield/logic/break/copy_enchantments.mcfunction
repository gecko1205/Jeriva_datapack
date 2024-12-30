scoreboard players set @s jrv.item.guardian_shield.timer 0

execute store result storage jrv:item.guardian_shield levels.mending int 1 run scoreboard players get mending_lvl jrv.item.guardian_shield
execute store result storage jrv:item.guardian_shield levels.unbreaking int 1 run scoreboard players get unbreaking_lvl jrv.item.guardian_shield

execute if score mending_lvl jrv.item.guardian_shield matches 1.. if score unbreaking_lvl jrv.item.guardian_shield matches 1.. run return run function jrv:item/guardian_shield/logic/break/mending_and_unbreaking with storage jrv:item.guardian_shield levels
execute if score mending_lvl jrv.item.guardian_shield matches 1.. unless score unbreaking_lvl jrv.item.guardian_shield matches 1.. run return run function jrv:item/guardian_shield/logic/break/mending_only with storage jrv:item.guardian_shield levels
execute unless score mending_lvl jrv.item.guardian_shield matches 1.. if score unbreaking_lvl jrv.item.guardian_shield matches 1.. run return run function jrv:item/guardian_shield/logic/break/unbreaking_only with storage jrv:item.guardian_shield levels

give @s jigsaw[item_model="jrv:guardian_shield/shield",item_name='"Escudo do guardião"',rarity="epic",custom_data={item:guardian_shield,broken:true},enchantment_glint_override=false,repairable={items:["shield","pale_oak_planks","oak_planks","birch_planks","acacia_planks","bamboo_planks","cherry_planks","jungle_planks","spruce_planks","warped_planks","crimson_planks","dark_oak_planks","mangrove_planks"]},max_damage=168,damage=168,max_stack_size=1] 1