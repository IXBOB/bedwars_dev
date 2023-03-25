#设置near_diamond
tag @a remove near_diamond
execute @e[type=player,x=-25,y=186,z=-25,r=5] ~~~ tag @s add near_diamond
execute @e[type=player,x=-25,y=186,z=25,r=5] ~~~ tag @s add near_diamond
execute @e[type=player,x=25,y=186,z=25,r=5] ~~~ tag @s add near_diamond
execute @e[type=player,x=25,y=186,z=-25,r=5] ~~~ tag @s add near_diamond
#设置near_emerald
tag @a remove near_emerald
execute @e[type=player,x=0,y=185,z=0,r=10] ~~~ tag @s add near_emerald
#复制计分板数值给玩家
scoreboard players operation @a "钻石等级" = @e[type=armor_stand,name=main,scores={gameSTART=1}] "钻石等级"
scoreboard players operation @a "钻石time" = @e[type=armor_stand,name=main,scores={gameSTART=1}] "钻石time"
scoreboard players operation @a "绿宝石time" = @e[type=armor_stand,name=main,scores={gameSTART=1}] "绿宝石time"
scoreboard players operation @a "绿宝石等级" = @e[type=armor_stand,name=main,scores={gameSTART=1}] "绿宝石等级"
scoreboard players operation @a game.time.sec.1 = @e[type=armor_stand,name=main,scores={gameSTART=1}] game.time.sec.1
scoreboard players operation @a game.time.sec.2 = @e[type=armor_stand,name=main,scores={gameSTART=1}] game.time.sec.2
scoreboard players operation @a game.time.min.1 = @e[type=armor_stand,name=main,scores={gameSTART=1}] game.time.min.1
scoreboard players operation @a game.time.min.2 = @e[type=armor_stand,name=main,scores={gameSTART=1}] game.time.min.2
#无敌时间
execute @a[scores={"分队"=1..2,"存活"=1,"无敌时间"=1..},x=-63,y=90,z=-63,dx=126,dy=114,dz=126] ~~~ scoreboard players add @s "无敌时间" -1
execute @a[scores={"分队"=1..2,"存活"=1,"无敌时间"=20..},x=-63,y=90,z=-63,dx=126,dy=114,dz=126] ~~~ effect @s instant_health 1 255 true
execute @a[scores={"分队"=1..2,"存活"=1,"无敌时间"=0},x=-63,y=90,z=-63,dx=126,dy=114,dz=126] ~~~ tellraw @s { "rawtext" : [ { "text" : "§f§l起床战争 >> §b§l无敌时间已结束！" } ] }
execute @a[scores={"分队"=1..2,"存活"=1,"无敌时间"=0},x=-63,y=90,z=-63,dx=126,dy=114,dz=126] ~~~ scoreboard players set @s "无敌时间" -1


#检测装备升级
execute @e[type=player,scores={"分队"=1..2},tag=up_sword] ~~~ function weapon_upgrade
execute @e[type=player,scores={"分队"=1..2},tag=up_pickaxe] ~~~ function weapon_upgrade
execute @e[type=player,scores={"分队"=1..2},tag=up_axe] ~~~ function weapon_upgrade
execute @e[type=player,scores={"分队"=1..2},tag=up_armor] ~~~ function weapon_upgrade
#检测搭桥蛋
execute @e[type=egg,x=-63,y=171,z=-63,dx=126,dy=37,dz=126] ~~~ function road_egg