 execute @s[l=7] ~~~ tellraw @s { "rawtext" : [ { "text" : "商店 >> §c您没有足够的经验" } ] }
 execute @s[l=7] ~~~ playsound mob.endermen.portal @s
 execute @s[scores={分队=1},lm=8] ~~~ tag @s add give_red_wool
 execute @s[scores={分队=2},lm=8] ~~~ tag @s add give_blue_wool
 execute @s[lm=8] ~~~ tellraw @s { "rawtext" : [ { "text" : "商店 >> §a您购买了 §r§6羊毛 x16" } ] }
 execute @s[lm=8] ~~~ playsound note.pling @s ~~~ 
 execute @s[lm=8] ~~~ xp -8L @s