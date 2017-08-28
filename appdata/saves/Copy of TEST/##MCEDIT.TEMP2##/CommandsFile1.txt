gamemode 3 @a[score_028dth_min=1]
scoreboard players reset @a 028dth
scoreboard players tag @a[score_028dth_min=1] remove 028stm
execute @e[tag=028ctr] ~ ~ ~ spreadplayers ~ ~ 400 500 true @a[tag=028igm]
execute @a[tag=028igm] ~ ~ ~ playsound block.end_portal.spawn master @s ~ ~ ~ 10 2
execute @a[tag=028igm] ~ ~ ~ particle totem ~ ~.8 ~ .4 .8 .4 0 100
execute @a[tag=028igm] ~ ~ ~ clear @s
gamemode 0 @a[tag=028igm]
scoreboard players tag @a remove 028igm
scoreboard players tag @e remove 028end
execute @e[tag=028wbr] ~ ~ ~ scoreboard players tag @e[tag=028ctr] add 028end
execute @e[tag=028ctr] ~ ~ ~ execute @s[tag=!028end] ~ ~ ~ worldborder set 400 1200
execute @e[tag=028ctr] ~ ~ ~ execute @s[tag=!028end] ~ ~ ~ summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,NoGravity:1,Tags:["028wbr"]}
execute @e[tag=028wbr,type=area_effect_cloud] ~ ~ ~ kill @e[tag=028wbr,type=armor_stand]
execute @e[tag=028ctr,c=1] ~ ~ ~ kill @e[tag=028ctr,rm=0]
scoreboard players add @e[tag=028ctr] 028p1t 1
scoreboard players add @e[tag=028ctr,score_028p1t_min=20] 028p1s 1
scoreboard players add @e[tag=028ctr,score_028p1s_min=10] 028p9s 1
scoreboard players add @e[tag=028ctr,score_028p9s_min=6] 028p1m 1
scoreboard players add @e[tag=028ctr,score_028p1m_min=10] 028p9m 1
scoreboard players add @e[tag=028ctr,score_028p9m_min=6] 028p1h 1
scoreboard players remove @e[score_028p1t_min=20] 028p1t 20
scoreboard players remove @e[score_028p1s_min=10] 028p1s 10
scoreboard players remove @e[score_028p9s_min=6] 028p9s 6
scoreboard players remove @e[score_028p1m_min=10] 028p1m 10
scoreboard players remove @e[score_028p9m_min=6] 028p9m 6
scoreboard players add @e[tag=028ctr] 028p9s 0
scoreboard players add @e[tag=028ctr] 028p1m 0
scoreboard players add @e[tag=028ctr] 028p9m 0
scoreboard players add @e[tag=028ctr] 028p1h 0
scoreboard players add @a 028kll 0
scoreboard players add @e[tag=028ctr] 028p1s 0
title @a[tag=028stm] actionbar ["",{"score":{"name":"@e[tag=028ctr]","objective":"028p1h"}},{"text":":"},{"score":{"name":"@e[tag=028ctr]","objective":"028p9m"}},{"score":{"name":"@e[tag=028ctr]","objective":"028p1m"}},{"text":":"},{"score":{"name":"@e[tag=028ctr]","objective":"028p9s"}},{"score":{"name":"@e[tag=028ctr]","objective":"028p1s"}}]
scoreboard players enable @a 028trg 
execute @a[score_028trg_min=1,tag=!028stm] ~ ~ ~ scoreboard players tag @a add 028igm
execute @a[score_028trg_min=1,tag=!028stm] ~ ~ ~ execute @e[tag=028ctr] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Radius:0,Duration:96000,Tags:["028wbr"]}
execute @a[score_028trg_min=1,tag=!028stm] ~ ~ ~ time set 0
execute @a[score_028trg_min=1,tag=!028stm] ~ ~ ~ worldborder set 1000
execute @a[score_028trg_min=1,tag=!028stm] ~ ~ ~ scoreboard players tag @a add 028stm
execute @a[score_028trg_min=1,tag=!028stm] ~ ~ ~ scoreboard players reset @e[tag=028ctr]
execute @a[score_028trg_min=1,tag=!028stm] ~ ~ ~ execute @e[tag=028ctr] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Duration:12000,Radius:0,Tags:["028m20"]}
execute @e[tag=028stm] ~ ~ ~ spawnpoint @s ~ ~ ~
scoreboard players tag @e remove 028y20
execute @e[tag=028m20] ~ ~ ~ scoreboard players tag @e[tag=028ctr] add 028y20
execute @e[tag=028ctr] ~ ~ ~ execute @s[tag=!028y20] ~ ~ ~ tellraw @a ["",{"text":"[","color":"dark_purple"},{"score":{"name":"@e[tag=028ctr]","objective":"028p1h"},"color":"dark_purple"},{"text":" hours ","bold":true,"color":"dark_purple"},{"score":{"name":"@e[tag=028ctr]","objective":"028p9m"},"color":"dark_purple"},{"text":"0 minutes have passed","color":"dark_purple"},{"text":"]","color":"dark_purple"}]
execute @e[tag=028ctr] ~ ~ ~ execute @s[tag=!028y20] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Duration:12000,Radius:0,Tags:["028m20"]}
execute @a[score_028trg_min=-3,score_028trg=-1] ~ ~ ~ scoreboard teams leave @a
execute @a[score_028trg_min=-1,score_028trg=-1] ~ ~ ~ scoreboard teams join 028tm1 @r[c=2] 
execute @a[score_028trg_min=-1,score_028trg=-1] ~ ~ ~ scoreboard players tag @a[team=028tm1] add 028itm
execute @a[score_028trg_min=-1,score_028trg=-1] ~ ~ ~ scoreboard teams join 028tm2 @r[c=2,tag=!028itm] 
execute @a[score_028trg_min=-1,score_028trg=-1] ~ ~ ~ scoreboard players tag @a[team=028tm2] add 028itm
execute @a[score_028trg_min=-1,score_028trg=-1] ~ ~ ~ scoreboard teams join 028tm3 @r[c=2,tag=!028itm] 
execute @a[score_028trg_min=-1,score_028trg=-1] ~ ~ ~ scoreboard players tag @a[team=028tm3] add 028itm
execute @a[score_028trg_min=-1,score_028trg=-1] ~ ~ ~ scoreboard teams join 028tm4 @r[c=2,tag=!028itm] 
execute @a[score_028trg_min=-2,score_028trg=-2] ~ ~ ~ scoreboard teams join 028tm1 @r[c=3] 
execute @a[score_028trg_min=-2,score_028trg=-2] ~ ~ ~ scoreboard players tag @a[team=028tm1] add 028itm
execute @a[score_028trg_min=-2,score_028trg=-2] ~ ~ ~ scoreboard teams join 028tm2 @r[c=3,tag=!028itm] 
execute @a[score_028trg_min=-2,score_028trg=-2] ~ ~ ~ scoreboard players tag @a[team=028tm2] add 028itm
execute @a[score_028trg_min=-2,score_028trg=-2] ~ ~ ~ scoreboard teams join 028tm3 @r[c=3,tag=!028itm] 
execute @a[score_028trg_min=-2,score_028trg=-2] ~ ~ ~ scoreboard players tag @a[team=028tm3] add 028itm
execute @a[score_028trg_min=-2,score_028trg=-2] ~ ~ ~ scoreboard teams join 028tm4 @r[c=3,tag=!028itm] 
execute @a[score_028trg_min=-3,score_028trg=-3] ~ ~ ~ scoreboard teams join 028tm1 @r[c=4] 
execute @a[score_028trg_min=-3,score_028trg=-3] ~ ~ ~ scoreboard players tag @a[team=028tm1] add 028itm
execute @a[score_028trg_min=-3,score_028trg=-3] ~ ~ ~ scoreboard teams join 028tm2 @r[c=4,tag=!028itm] 
execute @a[score_028trg_min=-3,score_028trg=-3] ~ ~ ~ scoreboard players tag @a[team=028tm2] add 028itm
execute @a[score_028trg_min=-3,score_028trg=-3] ~ ~ ~ scoreboard teams join 028tm3 @r[c=4,tag=!028itm] 
execute @a[score_028trg_min=-3,score_028trg=-3] ~ ~ ~ scoreboard players tag @a[team=028tm3] add 028itm
execute @a[score_028trg_min=-3,score_028trg=-3] ~ ~ ~ scoreboard teams join 028tm4 @r[c=4,tag=!028itm] 
execute @a[score_028trg_min=-3,score_028trg=-1] ~ ~ ~ scoreboard players tag @a remove 028itm
scoreboard players set @e[tag=028ctr] 028kll 0
execute @a[tag=028igm] ~ ~ ~ scoreboard players add @e[tag=028ctr] 028kll 1
execute @e[tag=028ctr,score_028kll_min=1,score_028kll=1] ~ ~ ~ tellraw @a ["",{"text":"[You can't play alone]","color":"red"}]
execute @e[tag=028ctr,score_028kll_min=1,score_028kll=1] ~ ~ ~ scoreboard players tag @a remove 028igm
execute @e[tag=028ctr,score_028kll_min=1,score_028kll=1] ~ ~ ~ scoreboard players tag @a remove 028stm
scoreboard players set @e[tag=028ctr] 028kll 0
execute @a[tag=028stm] ~ ~ ~ scoreboard players add @e[tag=028ctr] 028kll 1
execute @e[tag=028ctr,score_028kll_min=1,score_028kll=1] ~ ~ ~ scoreboard players set @p 028trg -1024
execute @a[score_028trg_min=-1024,score_028trg=-1024] ~ ~ ~ execute @e[tag=028stm,team=028tm1] ~ ~ ~ tellraw @a ["",{"text":"[","color":"dark_aqua"},{"selector":"@a[tag=028stm]"},{"text":" won the game","color":"dark_aqua"},{"text":"]","color":"dark_aqua"}]
execute @a[score_028trg_min=-1024,score_028trg=-1024] ~ ~ ~ execute @e[tag=028stm,team=028tm2] ~ ~ ~ tellraw @a ["",{"text":"[","color":"green"},{"selector":"@a[tag=028stm]"},{"text":" won the game","color":"green"},{"text":"]","color":"green"}]
execute @a[score_028trg_min=-1024,score_028trg=-1024] ~ ~ ~ execute @e[tag=028stm,team=028tm3] ~ ~ ~ tellraw @a ["",{"text":"[","color":"dark_red"},{"selector":"@a[tag=028stm]"},{"text":" won the game","color":"dark_red"},{"text":"]","color":"dark_red"}]
execute @a[score_028trg_min=-1024,score_028trg=-1024] ~ ~ ~ execute @e[tag=028stm,team=028tm4] ~ ~ ~ tellraw @a ["",{"text":"[","color":"yellow"},{"selector":"@a[tag=028stm]"},{"text":" won the game","color":"yellow"},{"text":"]","color":"yellow"}]
execute @a[score_028trg_min=-1024,score_028trg=-1024] ~ ~ ~ scoreboard teams leave @a
execute @a[score_028trg_min=-1024,score_028trg=-1024] ~ ~ ~ scoreboard players tag @a remove 028stm
scoreboard players set @a 028trg 0