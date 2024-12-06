$data merge storage jrv:item.guardian_shield {slot:$(slot)}
execute store result storage jrv:item.guardian_shield damage int 1 run data get entity @s SelectedItem.components.minecraft:damage
function jrv:item/guardian_shield/logic/macro with storage jrv:item.guardian_shield