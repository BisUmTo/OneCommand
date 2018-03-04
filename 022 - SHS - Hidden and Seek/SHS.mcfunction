# INSTALL
scoreboard objectives add SHShth stat.damageTaken
scoreboard objectives add SHSdmg stat.damageDealt
scoreboard objectives add SHSp1t dummy
scoreboard objectives add SHSp1s dummy
scoreboard objectives add SHSp9s dummy
scoreboard objectives add SHSp1m dummy
scoreboard objectives add SHSstr dummy
scoreboard objectives add SHSnon dummy
scoreboard teams add SHScer
scoreboard teams add SHSnas
scoreboard teams option SHScer color dark_red
scoreboard teams option SHSnas color green
scoreboard teams option SHSnas nametagVisibility hideForOtherTeams
scoreboard teams option SHSnas friendlyfire false
scoreboard teams option SHScer friendlyfire false
scoreboard teams option SHSnas collisionRule never
scoreboard teams option SHScer collisionRule never
scoreboard objectives add SHSset trigger
scoreboard objectives add SHSstart trigger
scoreboard objectives add SHSreset trigger

# CHAIN
scoreboard players tag BisUmTo add SHSadm
scoreboard players tag Sbriser add SHSadm
scoreboard players tag Sbriser_ add SHSadm
scoreboard players enable @a[tag=SHSadm] SHSset
scoreboard players enable @a[tag=SHSadm] SHSstart
scoreboard players enable @a[tag=SHSadm] SHSreset
effect @a[team=SHScer] minecraft:strength 3 0 true
effect @a saturation 100 1 true
execute @a[score_SHSreset_min=1] ~ ~ ~ scoreboard teams leave @a
execute @a[score_SHSreset_min=1] ~ ~ ~ scoreboard players tag @a remove SHSigm
execute @a[score_SHSreset_min=1] ~ ~ ~ scoreboard players tag @a remove SHSrtg
execute @a[score_SHSreset_min=1] ~ ~ ~ scoreboard players tag @a remove SHSsgm
execute @a[score_SHSreset_min=1] ~ ~ ~ scoreboard players reset @a SHSp1m
execute @a[score_SHSreset_min=1] ~ ~ ~ scoreboard players reset @a SHSp9s
execute @a[score_SHSreset_min=1] ~ ~ ~ scoreboard players reset @a SHSp1s
execute @a[score_SHSreset_min=1] ~ ~ ~ scoreboard players reset @a SHSp1t
execute @a[score_SHSreset_min=1] ~ ~ ~ scoreboard players reset @a SHSstr
execute @a[score_SHSreset_min=1] ~ ~ ~ effect @a clear
scoreboard players set @a SHSreset 0
execute @a[score_SHSstart_min=1] ~ ~ ~ scoreboard players tag @a add SHSrgm
execute @a[score_SHSstart_min=1] ~ ~ ~ gamemode 2 @a
execute @a[score_SHSstart_min=1] ~ ~ ~ tp @a @e[tag=SHSarm]
execute @a[score_SHSstart_min=1] ~ ~ ~ scoreboard players tag @p add SHSsgm
scoreboard players set @a SHSstart 0
execute @a[score_SHSset_min=1] ~ ~ ~ kill @e[tag=SHSarm]
execute @a[score_SHSset_min=1] ~ ~ ~ summon armor_stand ~ ~.5 ~ {NoGravity:1,Invisible:1,Tags:["SHSarm"]}
scoreboard players set @a SHSset 0
execute @a[score_SHSdmg_min=1,tag=SHSigm,team=SHScer] ~ ~ ~ execute @a[score_SHShth_min=1,tag=SHSigm,team=SHSnas,r=5,c=1] ~ ~ ~ summon minecraft:fireworks_rocket ~ ~ ~ {LifeTime:10,FireworksItem:{id:fireworks,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1,Trail:1,Colors:[I;16720384],FadeColors:[I;16741412]},{Type:0,Flicker:0,Trail:0,Colors:[I;16738363],FadeColors:[I;16772211]},{Type:2,Flicker:0,Trail:0,Colors:[I;16757117],FadeColors:[I;16383915]},{Type:4,Flicker:0,Trail:0,Colors:[I;16777215],FadeColors:[I;16772817]}]}}}}
execute @a[score_SHSdmg_min=1,tag=SHSigm,team=SHScer] ~ ~ ~ execute @a[score_SHShth_min=1,tag=SHSigm,team=SHSnas,r=5,c=1] ~ ~ ~ effect @a[r=5] resistance 3 255 true
execute @a[score_SHSdmg_min=1,tag=SHSigm,team=SHScer] ~ ~ ~ scoreboard teams join SHScer @a[score_SHShth_min=1,tag=SHSigm,r=5,c=1]
scoreboard players reset @a SHSdmg
scoreboard players reset @a SHShth
scoreboard teams leave @a[tag=SHSrgm]
scoreboard teams join SHSnas @a[tag=SHSrgm]
scoreboard players tag @a remove SHSrgm
execute @a[tag=SHSsgm,score_SHSstr=1,c=1] ~ ~ ~ scoreboard players tag @r add SHScer
effect @a[tag=SHScer] blindness 50 255 true
effect @a[tag=SHScer] slowness 50 255 true
effect @a[tag=SHScer] jump_boost 50 128 true
scoreboard teams leave @a[tag=SHScer]
scoreboard teams join SHScer @a[tag=SHScer]
scoreboard players tag @a remove SHScer
scoreboard players add @a[tag=SHSsgm] SHSstr 1
execute @a[tag=SHSsgm,score_SHSstr_min=20,score_SHSstr=20] ~ ~ ~ title @a title {"text":"3","color":"dark_red"}
execute @a[tag=SHSsgm,score_SHSstr_min=40,score_SHSstr=40] ~ ~ ~ title @a title {"text":"2","color":"red"}
execute @a[tag=SHSsgm,score_SHSstr_min=60,score_SHSstr=60] ~ ~ ~ title @a title {"text":"1","color":"gold"}
execute @a[tag=SHSsgm,score_SHSstr_min=80,score_SHSstr=80] ~ ~ ~ title @a title {"text":"VIA!","color":"dark_green"}
execute @a[tag=SHSsgm,score_SHSstr_min=100,score_SHSstr=100] ~ ~ ~ title @a title {"text":""}
execute @a[tag=SHSsgm,score_SHSstr_min=100,score_SHSstr=100] ~ ~ ~ scoreboard players tag @a add SHSrtg
execute @a[tag=SHSsgm,score_SHSstr_min=100,score_SHSstr=100] ~ ~ ~ scoreboard players set @a SHSp9s 4
execute @a[tag=SHSsgm,score_SHSstr_min=100,score_SHSstr=100] ~ ~ ~ scoreboard players set @a SHSp1s 4
execute @a[tag=SHSsgm,score_SHSstr_min=100,score_SHSstr=100] ~ ~ ~ scoreboard players set @a SHSp1m 0
scoreboard players tag @a[score_SHSstr_min=100] remove SHSsgm
scoreboard players reset @a[score_SHSstr_min=100] SHSstr
scoreboard players remove @a[tag=SHSrtg] SHSp1t 1
scoreboard players remove @a[tag=SHSrtg,score_SHSp1t=-20] SHSp1s 1
scoreboard players reset @a[tag=SHSrtg,score_SHSp1t=-20] SHSp1t
scoreboard players remove @a[tag=SHSrtg,score_SHSp1s=-1] SHSp9s 1
scoreboard players set @a[tag=SHSrtg,score_SHSp1s=-1] SHSp1s 9
scoreboard players tag @a[tag=SHSrtg,score_SHSp9s=-1] add SHSigm
scoreboard players set @a[tag=SHSrtg,score_SHSp9s=-1] SHSp1m 3
scoreboard players set @a[tag=SHSrtg,score_SHSp9s=-1] SHSp1s 0
scoreboard players set @a[tag=SHSrtg,score_SHSp9s=-1] SHSp9s 0
scoreboard players tag @a[score_SHSp1m_min=3,tag=SHSrtg] remove SHSrtg
scoreboard players remove @a[tag=SHSigm] SHSp1t 1
scoreboard players remove @a[tag=SHSigm,score_SHSp1t=-20] SHSp1s 1
scoreboard players reset @a[tag=SHSigm,score_SHSp1t=-20] SHSp1t
scoreboard players remove @a[tag=SHSigm,score_SHSp1s=-1] SHSp9s 1
scoreboard players set @a[tag=SHSigm,score_SHSp1s=-1] SHSp1s 9
scoreboard players remove @a[tag=SHSigm,score_SHSp9s=-1] SHSp1m 1
scoreboard players set @a[tag=SHSigm,score_SHSp9s=-1] SHSp9s 5
scoreboard players add @a SHSp1s 0
scoreboard players add @a SHSp9s 0
scoreboard players add @a SHSp1m 0
title @a[score_SHSnon_min=1,tag=SHSigm] title {"text":""}
title @a[score_SHSnon_min=1,tag=SHSigm] times 0 15 10
title @a[score_SHSnon_min=1,tag=SHSigm] actionbar ["",{"text":"In Gioco: "},{"score":{"name":"@p","objective":"SHSp1m"},"bold":true},{"text":":","bold":true},{"score":{"name":"@p","objective":"SHSp9s"},"bold":true},{"score":{"name":"@p","objective":"SHSp1s"},"bold":true},{"text":" ","bold":true}]
title @a[score_SHSp1m_min=0,tag=SHSrtg] title {"text":""}
title @a[score_SHSp1m_min=0,tag=SHSrtg] times 0 15 10
title @a[score_SHSp1m_min=0,tag=SHSrtg] actionbar ["",{"text":"Preparazione: "},{"score":{"name":"@p","objective":"SHSp1m"},"bold":true},{"text":":","bold":true},{"score":{"name":"@p","objective":"SHSp9s"},"bold":true},{"score":{"name":"@p","objective":"SHSp1s"},"bold":true},{"text":" ","bold":true}]
scoreboard players set @a SHSnon 0
execute @a[team=SHSnas] ~ ~ ~ scoreboard players add @a SHSnon 1
title @a[score_SHSnon=0,tag=SHSigm] clear
title @a[score_SHSnon=0,tag=SHSigm] times 10 60 10
title @a[score_SHSnon=0,tag=SHSigm] title {"text":"I cercatori hanno vinto!","color":"dark_red"}
title @a[score_SHSp1m=-1,tag=SHSigm] clear
title @a[score_SHSp1m=-1,tag=SHSigm] times 10 60 10
title @a[score_SHSp1m=-1,tag=SHSigm] title {"text":"I nasconditori hanno vinto!","color":"dark_green"}
scoreboard players tag @a[score_SHSnon=0] remove SHSigm
scoreboard players tag @a[score_SHSp1m=-1] remove SHSigm
