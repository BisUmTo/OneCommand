# INSTALL
scoreboard objectives add SMRdth killedByTeam.white
scoreboard objectives add SMRdts stat.deaths
scoreboard objectives add SMRkll teamkill.white
scoreboard objectives add SMRstr dummy
scoreboard objectives add SMRnon dummy
scoreboard teams add SMRass
scoreboard teams add SMRinn
scoreboard teams add SMRpol
scoreboard teams option SMRass nametagVisibility never
scoreboard teams option SMRinn nametagVisibility never
scoreboard teams option SMRpol nametagVisibility never
scoreboard teams option SMRass friendlyfire false
scoreboard teams option SMRinn friendlyfire false
scoreboard teams option SMRpol friendlyfire false
scoreboard teams option SMRass collisionRule never
scoreboard teams option SMRinn collisionRule never
scoreboard teams option SMRpol collisionRule never
scoreboard teams option SMRpol color white
scoreboard objectives add SMRset trigger
scoreboard objectives add SMRstart trigger
scoreboard objectives add SMRreset trigger

# CHAIN
scoreboard players tag BisUmTo add SMRadm
scoreboard players tag Sbriser add SMRadm
scoreboard players tag Sbriser_ add SMRadm
scoreboard players enable @a[tag=SMRadm] SMRset
scoreboard players enable @a[tag=SMRadm] SMRstart
scoreboard players enable @a[tag=SMRadm] SMRreset
effect @a[team=SMRass] minecraft:weakness 0 255 true
effect @a[team=SMRinn] minecraft:weakness 5 255 true
effect @a[team=SMRpol] minecraft:weakness 0 255 true
replaceitem entity @a[team=SMRpol] slot.inventory.8 arrow 1 0
effect @a saturation 100 1 true
execute @a[score_SMRreset_min=1] ~ ~ ~ scoreboard teams leave @a
execute @a[score_SMRreset_min=1] ~ ~ ~ scoreboard players tag @a remove SMRsgm
execute @a[score_SMRreset_min=1] ~ ~ ~ scoreboard players tag @a remove SMRing
execute @a[score_SMRreset_min=1] ~ ~ ~ scoreboard players reset @a SMRstr
execute @a[score_SMRreset_min=1] ~ ~ ~ effect @a clear
execute @a[score_SMRreset_min=1] ~ ~ ~ clear @a
execute @a[score_SMRreset_min=1] ~ ~ ~ kill @e[tag=SMRbow]
scoreboard players set @a SMRreset 0
execute @a[score_SMRstart_min=1] ~ ~ ~ scoreboard players tag @a add SMRrgm
execute @a[score_SMRstart_min=1] ~ ~ ~ gamemode 2 @a
execute @a[score_SMRstart_min=1] ~ ~ ~ clear @a
execute @a[score_SMRstart_min=1] ~ ~ ~ tp @a @e[tag=SMRarm]
execute @a[score_SMRstart_min=1] ~ ~ ~ kill @e[tag=SMRbow]
execute @a[score_SMRstart_min=1] ~ ~ ~ scoreboard players tag @p add SMRsgm
scoreboard players set @a SMRstart 0
execute @a[score_SMRset_min=1] ~ ~ ~ kill @e[tag=SMRarm]
execute @a[score_SMRset_min=1] ~ ~ ~ summon armor_stand ~ ~.5 ~ {NoGravity:1,Invisible:1,Tags:["SMRarm"]}
scoreboard players set @a SMRset 0

execute @a[score_SMRdts_min=1,tag=SMRing] ~ ~ ~ gamemode 3 @s

# INN UCCISO
execute @a[score_SMRdts_min=1,team=SMRinn] ~ ~ ~ effect @a[r=5,team=!SMRpol] minecraft:resistance 1 255 true
execute @a[score_SMRdts_min=1,team=SMRinn] ~ ~ ~ summon minecraft:fireworks_rocket ~ ~ ~ {LifeTime:10,FireworksItem:{id:fireworks,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1,Trail:1,Colors:[16720384],FadeColors:[16741412]},{Type:0,Flicker:0,Trail:0,Colors:[16738363],FadeColors:[16772211]},{Type:2,Flicker:0,Trail:0,Colors:[16757117],FadeColors:[16383915]},{Type:4,Flicker:0,Trail:0,Colors:[16777215],FadeColors:[16772817]}]}}}}
title @a[score_SMRdts_min=1,team=SMRinn] title {"text":"","color":"dark_red"}

# INN UCCISO DA POL
execute @a[score_SMRdth_min=1,team=SMRinn] ~ ~ ~ playsound minecraft:block.anvil.land ambient @s ~ ~ ~ 1 1.5 1
execute @a[score_SMRdth_min=1,team=SMRinn] ~ ~ ~ execute @a[team=SMRpol] ~ ~ ~ summon arrow ~ ~2.1 ~ {damage:500,Motion:[.0f,-.3f,.0f],CustomName:"Innocente"}
execute @a[score_SMRdth_min=1,team=SMRinn] ~ ~ ~ title execute @a[team=SMRpol] title {"text":"","color":"dark_red"}
scoreboard teams leave @a[score_SMRdts_min=1,team=SMRinn]

# ASS UCCISO DA POL
execute @a[score_SMRdts_min=1,team=SMRass] ~ ~ ~ effect @a[r=5] minecraft:resistance 1 255 true
execute @a[score_SMRdts_min=1,team=SMRass] ~ ~ ~ summon minecraft:fireworks_rocket ~ ~ ~ {LifeTime:10,FireworksItem:{id:fireworks,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1,Trail:1,Colors:[16720384],FadeColors:[16741412]},{Type:0,Flicker:0,Trail:0,Colors:[16738363],FadeColors:[16772211]},{Type:2,Flicker:0,Trail:0,Colors:[16757117],FadeColors:[16383915]},{Type:4,Flicker:0,Trail:0,Colors:[16777215],FadeColors:[16772817]}]}}}}
title @a[score_SMRdts_min=1,team=SMRass] title {"text":"HAI PERSO!","color":"dark_red"}
execute @a[score_SMRdts_min=1,team=SMRass] ~ ~ ~ title @a[team=!SMRass] title {"text":"HAI VINTO!","color":"dark_green"}
execute @a[score_SMRdts_min=1,team=SMRass] ~ ~ ~ title @a[team=!SMRass] subtitle {"text":"L'assassino è morto!","color":"dark_green"}
execute @a[score_SMRdts_min=1,team=SMRass] ~ ~ ~ clear @a
execute @a[score_SMRdts_min=1,team=SMRass] ~ ~ ~ scoreboard players tag @a remove SMRing
execute @a[score_SMRdts_min=1,team=SMRass] ~ ~ ~ playsound minecraft:entity.endermen.death ambient @s ~ ~ ~ 1 0.4 1
execute @a[score_SMRdts_min=1,team=SMRass] ~ ~ ~ playsound minecraft:entity.player.levelup ambient @a[team=!SMRass] ~ ~ ~ 1 .9 1
execute @a[score_SMRdts_min=1,team=SMRass] ~ ~ ~ scoreboard teams leave @a

# POL UCCISO
execute @a[score_SMRdts_min=1,team=SMRpol] ~ ~ ~ summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:bow",Count:1,tag:{ench:[{id:48,lvl:255},{id:51,lvl:1}],HideFlags:5,Unbreakable:1,display:{Name:"Pistola"}}},CustomName:"PRENDIMI!",CustomNameVisible:1,Tags:["SMRbow"]}
execute @a[score_SMRdts_min=1,team=SMRpol] ~ ~ ~ effect @a[r=5] minecraft:resistance 1 255 true
execute @a[score_SMRdts_min=1,team=SMRpol] ~ ~ ~ summon minecraft:fireworks_rocket ~ ~ ~ {LifeTime:10,FireworksItem:{id:fireworks,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1,Trail:1,Colors:[16720384],FadeColors:[16741412]},{Type:0,Flicker:0,Trail:0,Colors:[16738363],FadeColors:[16772211]},{Type:2,Flicker:0,Trail:0,Colors:[16757117],FadeColors:[16383915]},{Type:4,Flicker:0,Trail:0,Colors:[16777215],FadeColors:[16772817]}]}}}}
execute @a[score_SMRdts_min=1,team=SMRpol] ~ ~ ~ playsound minecraft:entity.endermen.death ambient @s ~ ~ ~ 1 0.4
scoreboard players tag @a[score_SMRdts_min=1,team=SMRpol] remove SMRing
scoreboard teams leave @a[score_SMRdts_min=1,team=SMRpol]

# POL UCCISO DA ASS
title @a[score_SMRkll_min=1,team=SMRass] title {"text":"","color":"dark_green"}
execute @a[score_SMRkll_min=1,team=SMRass] ~ ~ ~ title @a[score_SMRdts_min=1,team=SMRpol] title {"text":"","color":"dark_red"}
playsound minecraft:entity.player.levelup ambient @a[score_SMRkll_min=1,team=SMRass] ~ ~ ~ 1 .9 1

scoreboard players reset @a SMRdth
scoreboard players reset @a SMRdts
scoreboard players reset @a SMRkll

# PISTOLA
scoreboard players tag @a[team=!SMRass] add SMRpol {Inventory:[{id:"minecraft:bow"}]}
execute @a[tag=SMRing,team=SMRpol] ~ ~ ~ scoreboard teams join SMRinn @s[tag=!SMRpol]

# START
scoreboard teams join SMRinn @a[tag=SMRrgm]
scoreboard players tag @a remove SMRrgm
execute @a[score_SMRstr=1] ~ ~ ~ scoreboard players tag @r add SMRass
execute @a[score_SMRstr=1] ~ ~ ~ scoreboard players tag @r[tag=!SMRass] add SMRpol
scoreboard teams join SMRass @a[tag=SMRass]
scoreboard teams join SMRpol @a[tag=SMRpol]
scoreboard players tag @a remove SMRass
scoreboard players tag @a remove SMRpol
scoreboard players add @a[tag=SMRsgm] SMRstr 1
execute @a[score_SMRstr_min=1,score_SMRstr=240] ~ ~ ~ effect @a minecraft:weakness 3 255 true
execute @a[score_SMRstr_min=20,score_SMRstr=20] ~ ~ ~ title @a title {"text":"10","color":"dark_red"}
execute @a[score_SMRstr_min=40,score_SMRstr=40] ~ ~ ~ title @a title {"text":"9","color":"dark_red"}
execute @a[score_SMRstr_min=60,score_SMRstr=60] ~ ~ ~ title @a title {"text":"8","color":"dark_red"}
execute @a[score_SMRstr_min=80,score_SMRstr=80] ~ ~ ~ title @a title {"text":"7","color":"dark_red"}
execute @a[score_SMRstr_min=100,score_SMRstr=100] ~ ~ ~ title @a title {"text":"6","color":"red"}
execute @a[score_SMRstr_min=120,score_SMRstr=120] ~ ~ ~ title @a title {"text":"5","color":"red"}
execute @a[score_SMRstr_min=140,score_SMRstr=140] ~ ~ ~ title @a title {"text":"4","color":"red"}
execute @a[score_SMRstr_min=160,score_SMRstr=160] ~ ~ ~ title @a title {"text":"3","color":"gold"}
execute @a[score_SMRstr_min=180,score_SMRstr=180] ~ ~ ~ title @a title {"text":"2","color":"gold"}
execute @a[score_SMRstr_min=200,score_SMRstr=200] ~ ~ ~ title @a title {"text":"1","color":"gold"}
execute @a[score_SMRstr_min=220,score_SMRstr=220] ~ ~ ~ title @a title {"text":"VIA!","color":"dark_green"}
execute @a[score_SMRstr_min=220,score_SMRstr=220] ~ ~ ~ scoreboard players tag @a add SMRing
execute @a[score_SMRstr_min=220,score_SMRstr=220] ~ ~ ~ replaceitem entity @a[team=SMRpol] slot.hotbar.0 bow 1 0 {ench:[{id:48,lvl:255},{id:51,lvl:1}],HideFlags:7,Unbreakable:1,display:{Name:"Pistola"}}
execute @a[score_SMRstr_min=220,score_SMRstr=220] ~ ~ ~ replaceitem entity @a[team=SMRass] slot.hotbar.0 wooden_sword 1 0 {ench:[{id:16,lvl:255}],HideFlags:7,Unbreakable:1,display:{Name:"Coltello"}}
execute @a[score_SMRstr_min=240,score_SMRstr=240,tag=SMRing] ~ ~ ~ title @a title {"text":""}
scoreboard players tag @a[score_SMRstr_min=240] remove SMRsgm
scoreboard players reset @a[score_SMRstr_min=240] SMRstr

# VITTORIA
scoreboard players set @a SMRnon 0
execute @a[team=SMRinn,tag=SMRing] ~ ~ ~ scoreboard players add @a SMRnon 1
execute @a[team=SMRpol,tag=SMRing] ~ ~ ~ scoreboard players add @a SMRnon 1
title @a[score_SMRnon=0,team=SMRass,tag=SMRing] title {"text":"HAI VINTO!","color":"dark_green","bold":true}
title @a[score_SMRnon=0,team=SMRass,tag=SMRing] subtitle {"text":"Hai ucciso tutti!","color":"dark_green"}
execute @a[score_SMRnon=0,team=SMRass,tag=SMRing] ~ ~ ~ title @a[team=!SMRass] title {"text":"HAI PERSO!","color":"dark_red","bold":true}
execute @a[score_SMRnon=0,team=SMRass,tag=SMRing] ~ ~ ~ title @a[team=!SMRass] subtitle {"text":"L'assassino ha ucciso tutti!","color":"dark_red"}
execute @a[score_SMRnon=0,team=SMRass,tag=SMRing] ~ ~ ~ clear @a
execute @a[score_SMRnon=0,team=SMRass,tag=SMRing] ~ ~ ~ scoreboard teams leave @a
execute @a[score_SMRnon=0,tag=SMRing] ~ ~ ~ scoreboard players tag @a remove SMRing

# TITOLI
title @a[team=SMRinn,tag=SMRing] actionbar ["❱ ",{"text":"Innocente","color":"dark_green","bold":true}," ❰"]
title @a[team=SMRass,tag=SMRing] actionbar ["❱ ",{"text":"Assassino","color":"dark_red","bold":true}," ❰"]
title @a[team=SMRpol,tag=SMRing] actionbar ["❱ ",{"text":"Poliziotto","color":"blue","bold":true}," ❰"]
