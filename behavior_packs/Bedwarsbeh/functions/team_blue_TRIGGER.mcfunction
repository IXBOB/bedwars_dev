#蓝队陷阱被触发
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝陷阱等级"=1..3}] ~~~ execute @e[type=player,scores={"分队"=1},x=-5,y=176,z=-58,dx=10,dy=22,dz=26] ~~~ title @a[scores={"分队"=2}] title §c§l陷阱触发
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝陷阱等级"=1..3}] ~~~ execute @e[type=player,scores={"分队"=1},x=-5,y=176,z=-58,dx=10,dy=22,dz=26] ~~~ title @a[scores={"分队"=2}] subtitle 一名玩家触发了队伍陷阱
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝陷阱等级"=1..3}] ~~~ execute @e[type=player,scores={"分队"=1},x=-5,y=176,z=-58,dx=10,dy=22,dz=26] ~~~ playsound mob.endermen.portal @a[scores={"分队"=2}]
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝陷阱等级"=1}] ~~~ execute @e[type=player,scores={"分队"=1},x=-5,y=176,z=-58,dx=10,dy=22,dz=26] ~~~ effect @s mining_fatigue 10 0
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝陷阱等级"=2}] ~~~ execute @e[type=player,scores={"分队"=1},x=-5,y=176,z=-58,dx=10,dy=22,dz=26] ~~~ effect @s mining_fatigue 10 1
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝陷阱等级"=3}] ~~~ execute @e[type=player,scores={"分队"=1},x=-5,y=176,z=-58,dx=10,dy=22,dz=26] ~~~ effect @s mining_fatigue 10 1
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝陷阱等级"=3}] ~~~ execute @e[type=player,scores={"分队"=1},x=-5,y=176,z=-58,dx=10,dy=22,dz=26] ~~~ effect @s blindness 10 0
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝陷阱等级"=1..3}] ~~~ execute @e[type=player,scores={"分队"=1},x=-5,y=176,z=-58,dx=10,dy=22,dz=26] ~~~ scoreboard players set @e[type=armor_stand,name=main,scores={gameSTART=1}] "蓝陷阱等级" 0