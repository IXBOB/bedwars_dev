# 升级到钻石镐
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_pickaxe,scores={"镐等级"=3}] ~~~ clear @s bedwars:iron_pickaxe
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_pickaxe,scores={"镐等级"=3}] ~~~ give @s bedwars:diamond_pickaxe 1 0 {"minecraft:item_lock":{"mode":"lock_in_inventory"},"minecraft:keep_on_death":{}}
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_pickaxe,scores={"镐等级"=3}] ~~~ scoreboard players set @s "镐等级" 4
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_pickaxe,scores={"镐等级"=4}] ~~~ tellraw @s { "rawtext" : [ { "text" : "§f商店 >> §7§l您的镐已升级为等级 4 §f(钻石质)" } ] }
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_pickaxe,scores={"镐等级"=4}] ~~~ tag @s remove up_pickaxe
