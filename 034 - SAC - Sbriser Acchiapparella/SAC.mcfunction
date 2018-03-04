# INSTALL
scoreboard objectives add SAChth stat.damageTaken
scoreboard objectives add SACdmg stat.damageDealt
scoreboard objectives add SACp1t dummy
scoreboard objectives add SACp1s dummy
scoreboard objectives add SACp9s dummy
scoreboard objectives add SACp1m dummy
scoreboard objectives add SACstr dummy
scoreboard objectives add SACpnt dummy Punteggio:
scoreboard objectives add SACpti dummy 
scoreboard teams add SACcer
scoreboard teams add SACnas
scoreboard teams option SACcer color dark_red
scoreboard teams option SACnas color green
scoreboard teams option SACnas friendlyfire false
scoreboard teams option SACnas collisionRule never
scoreboard teams option SACcer collisionRule never
scoreboard objectives add SACset trigger
scoreboard objectives add SACstart trigger
scoreboard objectives add SACreset trigger

# CHAIN
scoreboard players tag BisUmTo add SACadm
scoreboard players tag Sbriser add SACadm
scoreboard players tag Sbriser_ add SACadm
scoreboard players enable @a[tag=SACadm] SACset
scoreboard players enable @a[tag=SACadm] SACstart
scoreboard players enable @a[tag=SACadm] SACreset
effect @a minecraft:saturation 100 1 true
effect @a[team=SACcer] minecraft:strength 3 0 true
effect @a[team=SACcer] minecraft:speed 3 0 true
execute @a[score_SACreset_min=1] ~ ~ ~ scoreboard teams leave @a
execute @a[score_SACreset_min=1] ~ ~ ~ scoreboard players tag @a remove SACigm
execute @a[score_SACreset_min=1] ~ ~ ~ scoreboard players tag @a remove SACsgm
execute @a[score_SACreset_min=1] ~ ~ ~ effect @a clear
execute @a[score_SACreset_min=1] ~ ~ ~ scoreboard objectives setdisplay sidebar
execute @a[score_SACreset_min=1] ~ ~ ~ scoreboard players reset * SACpnt
execute @a[score_SACreset_min=1] ~ ~ ~ scoreboard players reset * SACpti
execute @a[score_SACreset_min=1] ~ ~ ~ scoreboard players reset * SACstr
execute @a[score_SACreset_min=1] ~ ~ ~ scoreboard players reset @a SACp1m
execute @a[score_SACreset_min=1] ~ ~ ~ scoreboard players reset @a SACp9s
execute @a[score_SACreset_min=1] ~ ~ ~ scoreboard players reset @a SACp1s
execute @a[score_SACreset_min=1] ~ ~ ~ scoreboard players reset @a SACp1t
scoreboard players set @a SACreset 0
execute @a[score_SACstart_min=1] ~ ~ ~ scoreboard players tag @a add SACrgm
execute @a[score_SACstart_min=1] ~ ~ ~ gamemode 2 @a
execute @a[score_SACstart_min=1] ~ ~ ~ tp @a @e[tag=SACarm]
execute @a[score_SACstart_min=1] ~ ~ ~ scoreboard players tag @p add SACsgm
execute @a[score_SACstart_min=1] ~ ~ ~ scoreboard objectives setdisplay sidebar
execute @a[score_SACstart_min=1] ~ ~ ~ scoreboard players reset * SACpnt
execute @a[score_SACstart_min=1] ~ ~ ~ scoreboard players reset * SACpti
scoreboard players set @a SACstart 0
execute @a[score_SACset_min=1] ~ ~ ~ kill @e[tag=SACarm]
execute @a[score_SACset_min=1] ~ ~ ~ summon armor_stand ~ ~.5 ~ {NoGravity:1,Invisible:1,Tags:["SACarm"]}
scoreboard players set @a SACset 0
execute @a[score_SACdmg_min=1,tag=SACigm,team=SACcer] ~ ~ ~ execute @a[score_SAChth_min=1,tag=SACigm,team=SACnas,r=5,c=1] ~ ~ ~ summon minecraft:fireworks_rocket ~ ~ ~ {LifeTime:10,FireworksItem:{id:fireworks,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1,Trail:1,Colors:[16720384],FadeColors:[16741412]},{Type:0,Flicker:0,Trail:0,Colors:[16738363],FadeColors:[16772211]},{Type:2,Flicker:0,Trail:0,Colors:[16757117],FadeColors:[16383915]},{Type:4,Flicker:0,Trail:0,Colors:[16777215],FadeColors:[16772817]}]}}}}
execute @a[score_SACdmg_min=1,tag=SACigm,team=SACcer] ~ ~ ~ execute @a[score_SAChth_min=1,tag=SACigm,team=SACnas,r=5,c=1] ~ ~ ~ effect @a[r=5] minecraft:resistance 3 255 true
execute @a[score_SACdmg_min=1,tag=SACigm,team=SACcer] ~ ~ ~ execute @a[score_SAChth_min=1,tag=SACigm,team=SACnas,r=5,c=1] ~ ~ ~ scoreboard players tag @a[score_SACdmg_min=1,tag=SACigm,team=SACcer,r=5] add SACtrv
execute @a[score_SACdmg_min=1,tag=SACigm,team=SACcer] ~ ~ ~ scoreboard teams join SACcer @a[score_SAChth_min=1,tag=SACigm,r=5,c=1,team=SACnas]
scoreboard teams join SACnas @a[tag=SACtrv]
scoreboard players tag @a remove SACtrv
scoreboard players reset @a SACdmg
scoreboard players reset @a SAChth
scoreboard teams join SACnas @a[tag=SACrgm]
scoreboard players tag @a remove SACrgm
execute @a[tag=SACsgm,score_SACstr=1] ~ ~ ~ scoreboard players tag @r add SACcer
effect @a[tag=SACcer] minecraft:slowness 11 255 true
effect @a[tag=SACcer] minecraft:jump_boost 11 128 true
scoreboard teams join SACcer @a[tag=SACcer]
scoreboard players tag @a remove SACcer
scoreboard players add @a[tag=SACsgm] SACstr 1
execute @a[tag=SACsgm,score_SACstr_min=20,score_SACstr=20] ~ ~ ~ title @a title {"text":"10","color":"dark_red"}
execute @a[tag=SACsgm,score_SACstr_min=40,score_SACstr=40] ~ ~ ~ title @a title {"text":"9","color":"dark_red"}
execute @a[tag=SACsgm,score_SACstr_min=60,score_SACstr=60] ~ ~ ~ title @a title {"text":"8","color":"dark_red"}
execute @a[tag=SACsgm,score_SACstr_min=80,score_SACstr=80] ~ ~ ~ title @a title {"text":"7","color":"dark_red"}
execute @a[tag=SACsgm,score_SACstr_min=100,score_SACstr=100] ~ ~ ~ title @a title {"text":"6","color":"red"}
execute @a[tag=SACsgm,score_SACstr_min=120,score_SACstr=120] ~ ~ ~ title @a title {"text":"5","color":"red"}
execute @a[tag=SACsgm,score_SACstr_min=140,score_SACstr=140] ~ ~ ~ title @a title {"text":"4","color":"red"}
execute @a[tag=SACsgm,score_SACstr_min=160,score_SACstr=160] ~ ~ ~ title @a title {"text":"3","color":"gold"}
execute @a[tag=SACsgm,score_SACstr_min=180,score_SACstr=180] ~ ~ ~ title @a title {"text":"2","color":"gold"}
execute @a[tag=SACsgm,score_SACstr_min=200,score_SACstr=200] ~ ~ ~ title @a title {"text":"1","color":"gold"}
execute @a[tag=SACsgm,score_SACstr_min=220,score_SACstr=220] ~ ~ ~ title @a title {"text":"VIA!","color":"dark_green"}
execute @a[tag=SACsgm,score_SACstr_min=240,score_SACstr=240] ~ ~ ~ title @a title {"text":""}
execute @a[tag=SACsgm,score_SACstr_min=240,score_SACstr=240] ~ ~ ~ scoreboard objectives setdisplay sidebar SACpnt
execute @a[tag=SACsgm,score_SACstr_min=240,score_SACstr=240] ~ ~ ~ scoreboard players tag @a add SACigm
execute @a[tag=SACsgm,score_SACstr_min=240,score_SACstr=240] ~ ~ ~ scoreboard players set @a SACp9s 0
execute @a[tag=SACsgm,score_SACstr_min=240,score_SACstr=240] ~ ~ ~ scoreboard players set @a SACp1s 0
execute @a[tag=SACsgm,score_SACstr_min=240,score_SACstr=240] ~ ~ ~ scoreboard players set @a SACp1m 3
scoreboard players tag @a[score_SACstr_min=240] remove SACsgm
scoreboard players reset @a[score_SACstr_min=240] SACstr
scoreboard players remove @a[tag=SACigm] SACp1t 1
scoreboard players remove @a[tag=SACigm,score_SACp1t=-20] SACp1s 1
scoreboard players reset @a[tag=SACigm,score_SACp1t=-20] SACp1t
scoreboard players remove @a[tag=SACigm,score_SACp1s=-1] SACp9s 1
scoreboard players set @a[tag=SACigm,score_SACp1s=-1] SACp1s 9
scoreboard players remove @a[tag=SACigm,score_SACp9s=-1] SACp1m 1
scoreboard players set @a[tag=SACigm,score_SACp9s=-1] SACp9s 5
scoreboard players add @a SACp1s 0
scoreboard players add @a SACp9s 0
scoreboard players add @a SACp1m 0
scoreboard players add @a SACpti 0
scoreboard players set #20 SACpti 20
title @a[score_SACp1m_min=0,tag=SACigm] title {"text":""}
title @a[score_SACp1m_min=0,tag=SACigm] times 0 15 10
title @a[score_SACp1m_min=0,tag=SACigm] actionbar ["",{"text":" In Gioco: "},{"score":{"name":"@p","objective":"SACp1m"},"bold":true},{"text":":","bold":true},{"score":{"name":"@p","objective":"SACp9s"},"bold":true},{"score":{"name":"@p","objective":"SACp1s"},"bold":true},{"text":" ","bold":true}]
scoreboard players add @a[tag=SACigm,team=SACnas] SACpti 1
title @a[score_SACp1m=,tag=SACigm] clear
title @a[score_SACp1m=-1,tag=SACigm] times 10 15 10
title @a[score_SACp1m=-1,tag=SACigm] title {"text":"FINE!","color":"dark_green"}
scoreboard players tag @a[score_SACp1m=-1] remove SACigm
execute @a ~ ~ ~ scoreboard players operation @s SACpnt = @s SACpti
scoreboard players operation @a SACpnt /= #20 SACpti
