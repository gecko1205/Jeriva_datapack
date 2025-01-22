execute if items entity @s[tag=!jrv.core.item.totem_of_undying.active] weapon.mainhand totem_of_undying run item modify entity @s weapon.mainhand jrv:core/totem_of_undying/inactive
execute if items entity @s[tag=!jrv.core.item.totem_of_undying.active] weapon.offhand totem_of_undying run item modify entity @s weapon.offhand jrv:core/totem_of_undying/inactive

execute if items entity @s[tag=jrv.core.item.totem_of_undying.active] weapon.mainhand totem_of_undying run item modify entity @s weapon.mainhand jrv:core/totem_of_undying/active
execute if items entity @s[tag=jrv.core.item.totem_of_undying.active] weapon.offhand totem_of_undying run item modify entity @s weapon.offhand jrv:core/totem_of_undying/active
