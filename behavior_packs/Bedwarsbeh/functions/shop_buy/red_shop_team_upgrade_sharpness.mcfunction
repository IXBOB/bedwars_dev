 execute @s[scores={"分队"=1},lm=400] ~~~ tag @s add want_upgrade_sharpness_red
 execute @s[scores={"分队"=1},l=399] ~~~ tellraw @s { "rawtext" : [ { "text" : "商店 >> §c您没有足够的经验" } ] }
 execute @s[scores={"分队"=1},l=399] ~~~ playsound mob.endermen.portal @s
 execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红锋利等级"=..2}] ~~~ execute @a[tag=want_upgrade_sharpness_red] ~~~ tag @s add upgrade_red_strength
 execute @a[tag=upgrade_red_strength] ~~~ tellraw @s { "rawtext" : [ { "text" : "商店 >> §a您升级了 §r§6团队锋利" } ] }
 execute @a[tag=upgrade_red_strength] ~~~ tellraw @a[scores={"分队"=1}] { "rawtext" : [ { "text" : "§f商店 · 团队升级 >> §e " } ,{ "selector" :  "@a[tag=want_upgrade_sharpness_red]"},{ "text" : "§f§l 升级了 团队锋利" }] }
 execute @a[tag=upgrade_red_strength] ~~~ playsound note.pling @s ~~~
 execute @a[tag=upgrade_red_strength] ~~~ xp -400L @s
 execute @a[tag=upgrade_red_strength] ~~~ scoreboard players add @e[type=armor_stand,scores={gameSTART=1},name=main] "红锋利等级" 1
 execute @a[tag=upgrade_red_strength] ~~~ function team_upgrade_PROTECTIONandSHARPNESS
 tag @a remove want_upgrade_sharpness_red
 tag @a remove upgrade_red_strength