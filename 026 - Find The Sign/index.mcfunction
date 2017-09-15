gamerule commandBlockOutput false
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule doTileDrops false
gamerule doEntityDrops false
gamerule doMobSpawning false
gamerule keepInventory true
gamerule logAdminCommands false
gamerule showDeathMessages false
gamerule doLimitedCrafting true
gamerule announceAdvancements false
gamerule reducedDebugInfo true
gamerule doEntityDrops false
gamerule sendCommandFeedback false

scoreboard objectives add 026dth stat.deaths
scoreboard objectives add 026dts deathCount
scoreboard objectives add 026lvl dummy
scoreboard objectives add 026p1t dummy
scoreboard objectives add 026p1s dummy
scoreboard objectives add 026p9s dummy
scoreboard objectives add 026p1m dummy
scoreboard objectives add 026p9m dummy
scoreboard objectives add 026p1h dummy
scoreboard objectives add 026jll dummy
scoreboard objectives add LEVEL trigger
scoreboard teams add 026nCl
scoreboard teams option 026nCl collisionRule never
scoreboard teams option 026nCl friendlyfire false
scoreboard teams option 026nCl deathMessageVisibility never
scoreboard teams join 026nCl @a
scoreboard players enable @a LEVEL

execute @a[score_LEVEL_min=-1,score_LEVEL=11] ~ ~ ~ scoreboard players operation @a LEVEL = @s LEVEL
execute @a ~ ~ ~ scoreboard players operation @s[score_LEVEL_min=0,score_LEVEL=10] 026lvl = @s LEVEL

scoreboard players add @a 026dts 0
scoreboard players add @a 026jll 0

execute @e[tag=026spw,type=armor_stand] ~ ~ ~ setworldspawn ~ ~ ~

# EFFTTI MULTILIVELLO #
effect @a minecraft:saturation 999999 254 true
effect @a[score_026lvl=6] minecraft:night_vision 999999 0 true
effect @a[score_026lvl_min=9] minecraft:night_vision 999999 0 true
execute @a[score_026lvl_min=3,score_026lvl=5] ~ ~ ~ detect ~ ~.1 ~ lava * effect @s minecraft:instant_damage 1 5 true
execute @e[score_LEVEL_min=0] ~ ~ ~ kill @e[type=item]
#######################
#######################

# RESPAWN #
scoreboard players tag @a[score_026dth_min=1] remove 026spw 
tp @a[tag=!026spw] @e[tag=026spw,type=armor_stand]
gamemode 2 @a[tag=!026spw,m=!2]
scoreboard players tag @a add 026spw
execute @e[type=armor_stand,tag=026spw] ~ ~ ~ scoreboard players set @a[r=0] 026dth 0
###########
###########

# RESET LIVELLO #
execute @a[score_LEVEL_min=-110,score_LEVEL=-110,tag=026gjl] ~ ~ ~ scoreboard players tag @a add 026rst
execute @a[score_LEVEL_min=-110,score_LEVEL=-110] ~ ~ ~ scoreboard players operation @a[score_026lvl_min=1] LEVEL = @s 026lvl
execute @a[score_LEVEL_min=-110,score_LEVEL=-110] ~ ~ ~ scoreboard players set @a[score_026lvl_min=0,score_026lvl=0] LEVEL -1
#################
#################

# CREDITI #
execute @a[score_LEVEL_min=-83,score_LEVEL=-83] ~ ~ ~ tellraw @a ["",{"text":"\n\n\n▶ BisUmTo ◀","color":"dark_red","bold":true},{"text":"\nCiao! Sono BisUmTo, un giovane RedStoner e OneCommander Italiano appassionato alle CustomMap.\nIn questa Mappa mi sono dedicato alla parte funzionale di quest'ultima cercando di non utilizzare alcun command_block all'interno del gioco.\n\n▶ YouTube: "},{"text":"BisUmTo","italic":true,"underlined":true,"color":"dark_red","clickEvent":{"action":"open_url","value":"https://youtube.com/BisUmTo"},"hoverEvent":{"action":"show_text","value":"Clicca QUI per visitare il suo canale YouTube"}},{"text":"\n\n▶ Telegram: "},{"text":"@BisUmTo","italic":true,"underlined":true,"color":"dark_red","clickEvent":{"action":"open_url","value":"https://t.me/BisUmTo"},"hoverEvent":{"action":"show_text","value":"Clicca QUI per visitare il suo canale Telegram"}}]
execute @a[score_LEVEL_min=-92,score_LEVEL=-92] ~ ~ ~ tellraw @a ["",{"text":"\n\n\n\n▶ marcobarba92 ◀","bold":true,"color":"dark_blue"},{"text":"\nHola! Sono Marco, l'ideatore ed amministratore del progetto.\nIn questa Mappa mi sono dedicato alla progettazione dei livelli e alla realizzazione grezza di questi ultimi.\n\n▶ Instagram: "},{"text":"marcobarba92","italic":true,"underlined":true,"color":"dark_blue","clickEvent":{"action":"open_url","value":"https://www.instagram.com/marcobarba92/"},"hoverEvent":{"action":"show_text","value":"Clicca QUI per visitare il suo profilo Instagram"}},{"text":"\n\n"}]
execute @a[score_LEVEL_min=-9,score_LEVEL=-9] ~ ~ ~ tellraw @a ["",{"text":"\n\n\n▶ MinoGILD_A ◀","color":"light_purple","bold":true},{"text":"\nEhi! Ciao! Sono Mino! Sono un builder italiano specializzato in piccole costruzioni!\nIn questa Mappa mi sono dedicato alla parte del design, in particolare ai dettagli.\n\n▶ YouTube: "},{"text":"Mino","italic":true,"underlined":true,"color":"light_purple","clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UCbO8XPuOW93PsUN0202PCxQ"},"hoverEvent":{"action":"show_text","value":"Clicca QUI per visitare il suo canale YouTube"}},{"text":"\n\n▶ Telegram: "},{"text":"@","italic":true,"underlined":true,"color":"light_purple","clickEvent":{"action":"open_url","value":"https://t.me/minoemina"},"hoverEvent":{"action":"show_text","value":"Clicca QUI per visitare il suo gruppo Telegram"}},{"text":"minoemina","italic":true,"underlined":true,"color":"light_purple","hoverEvent":{"action":"show_text","value":"Clicca QUI per visitare il suo gruppo Telegram"}}]

execute @a[score_LEVEL_min=-83,score_LEVEL=-83] ~ ~ ~ playsound minecraft:block.wood.break block @a ~ ~ ~ 100
execute @a[score_LEVEL_min=-92,score_LEVEL=-92] ~ ~ ~ playsound minecraft:block.wood.break block @a ~ ~ ~ 100
execute @a[score_LEVEL_min=-9,score_LEVEL=-9] ~ ~ ~ playsound minecraft:block.wood.break block @a ~ ~ ~ 100
###########
###########

# REGOLE #
execute @a[score_LEVEL_min=-101,score_LEVEL=-101] ~ ~ ~ execute @a ~ ~ ~ tellraw @s ["",{"text":"\nIn caso di difficoltà avrai "},{"score":{"name":"@s","objective":"026jll"},"bold":true},{"text":" jolly.\nQuesti li potrai utilizzare una sola volta per livello e ti daranno un "},{"text":"piccolo aiuto","bold":true},{"text":" nella soluzione di quest'ultimo.\nFanne buon uso!\n "}]
execute @a[score_LEVEL_min=-101,score_LEVEL=-101] ~ ~ ~ playsound minecraft:block.wood.break block @a ~ ~ ~ 100

execute @a[score_LEVEL_min=-102,score_LEVEL=-102] ~ ~ ~ execute @e[tag=026rar] ~ ~ ~ setblock ~ ~-1 ~ wall_sign 3 replace {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger LEVEL set -104\"}}",Text2:"{\"text\":\"\\u25b6 2 \\u25c0\",\"bold\":true,\"underlined\":true,\"color\":\"dark_red\"}",Text3:"{\"text\":\"Non Arrenderti\"}"}
execute @a[score_LEVEL_min=-102,score_LEVEL=-102] ~ ~ ~ execute @e[tag=026rar] ~ ~ ~ setblock ~ ~ ~ air 0 destroy
execute @a[score_LEVEL_min=-102,score_LEVEL=-102] ~ ~ ~ playsound minecraft:entity.player.attack.nodamage block @s ~ ~ ~ 10 1 1
execute @a[score_LEVEL_min=-104,score_LEVEL=-104] ~ ~ ~ execute @e[tag=026rar] ~ ~ ~ setblock ~ ~ ~ wall_sign 3 replace {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger LEVEL set -102\"}}",Text2:"{\"text\":\"\\u25b6 2 \\u25c0\",\"bold\":true,\"underlined\":true,\"color\":\"dark_red\"}",Text3:"{\"text\":\"Non Arrenderti\"}"}
execute @a[score_LEVEL_min=-104,score_LEVEL=-104] ~ ~ ~ execute @e[tag=026rar] ~ ~ ~ setblock ~ ~-1 ~ air 0 destroy
execute @a[score_LEVEL_min=-104,score_LEVEL=-104] ~ ~ ~ scoreboard players add @e[tag=026rar] 026dts 1
execute @a[score_LEVEL_min=-104,score_LEVEL=-104] ~ ~ ~ execute @e[tag=026rar,score_026dts_min=20,score_026dts=20] ~ ~ ~ tellraw @a {"text":"\nLo sai che è inutile?\n","color":"gray"}
execute @a[score_LEVEL_min=-104,score_LEVEL=-104] ~ ~ ~ execute @e[tag=026rar,score_026dts_min=50,score_026dts=50] ~ ~ ~ tellraw @a {"text":"\nBasta! Tieni questo quarto Jolly...\n","color":"gray"}
execute @a[score_LEVEL_min=-104,score_LEVEL=-104] ~ ~ ~ execute @e[tag=026rar,score_026dts_min=50,score_026dts=50] ~ ~ ~ playsound minecraft:item.bottle.fill_dragonbreath player @a ~ ~ ~ 100 2
execute @a[score_LEVEL_min=-104,score_LEVEL=-104] ~ ~ ~ execute @e[tag=026rar,score_026dts_min=50,score_026dts=50] ~ ~ ~ scoreboard players set @a 026jll 4
execute @a[score_LEVEL_min=-104,score_LEVEL=-104] ~ ~ ~ scoreboard players reset @e[tag=026rar,score_026dts_min=50] 026dts
execute @a[score_LEVEL_min=-1,score_LEVEL=0] ~ ~ ~ scoreboard players reset @e[tag=026rar] 026dts

execute @a[score_LEVEL_min=-1,score_LEVEL=-1] ~ ~ ~ execute @e[tag=026rar] ~ ~ ~ setblock ~ ~ ~ wall_sign 3 replace {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger LEVEL set -102\"}}",Text2:"{\"text\":\"\\u25b6 2 \\u25c0\",\"bold\":true,\"underlined\":true,\"color\":\"dark_red\"}",Text3:"{\"text\":\"Non Arrenderti\"}"}
execute @a[score_LEVEL_min=-1,score_LEVEL=-1] ~ ~ ~ execute @e[tag=026rar] ~ ~ ~ setblock ~ ~-1 ~ air 0 destroy
execute @a[score_LEVEL_min=-104,score_LEVEL=-104] ~ ~ ~ playsound minecraft:entity.player.attack.nodamage block @s ~ ~ ~ 10 1 1

execute @a[score_LEVEL_min=-103,score_LEVEL=-103] ~ ~ ~ playsound minecraft:block.end_portal.spawn block @s ~ ~ ~ 10 .1 1
execute @a[score_LEVEL_min=-103,score_LEVEL=-103] ~ ~ ~ effect @s minecraft:blindness 6 20 true
execute @a[score_LEVEL_min=-103,score_LEVEL=-103] ~ ~ ~ title @s title {"text":"Vedremo...","color":"dark_gray"}
##########
##########

# HUB #
execute @e[tag=026bis] ~ ~ ~ execute @p[score_026lvl_min=0,score_026lvl=0] ~ ~ ~ entitydata @e[tag=026bis,r=6] {DisplayOffset:85}
execute @e[tag=026bis] ~ ~ ~ execute @p[score_026lvl_min=0,score_026lvl=0] ~ ~ ~ entitydata @e[tag=026bis,rm=6] {DisplayOffset:30}
#######
#######

# LIVELLO 0 #
tp @a[score_LEVEL_min=0,score_LEVEL=0] @e[tag=026lv0,type=armor_stand]
execute @a[score_LEVEL_min=0,score_LEVEL=0] ~ ~ ~ tp @e[tag=026spw,type=armor_stand] @e[tag=026lv0]
execute @a[score_026lvl_min=0,score_026lvl=0] ~ ~ ~ detect ~.5 ~ ~ lava * effect @s minecraft:fire_resistance 999999 254 true
execute @a[score_026lvl_min=1] ~ ~ ~ effect @s minecraft:fire_resistance 0 255 true

scoreboard players set @a[score_LEVEL=-1,score_LEVEL_min=-1] 026lvl 0
execute @a[score_LEVEL_min=-1,score_LEVEL=-1] ~ ~ ~ execute @e[tag=026str] ~ ~ ~ setblock ~ ~ ~ air 0 destroy
execute @a[score_LEVEL_min=0,score_LEVEL=1] ~ ~ ~ execute @e[tag=026str] ~ ~ ~ setblock ~ ~ ~ wall_sign 5 replace {Text4:"{\"text\":\"\"}",Text3:"{\"italic\":true,\"color\":\"white\",\"text\":\"Find The Sign\"}",z:920920,Text2:"{\"underlined\":true,\"color\":\"dark_red\",\"text\":\"▶INIZIA LA MAPPA◀\"}",id:"minecraft:sign",Text1:"{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger LEVEL set -1\"},\"text\":\"\"}"}
#############
#############

# LIVELLO 1 #
tp @a[score_LEVEL_min=1,score_LEVEL=1] @e[tag=026lv1,type=armor_stand]
execute @a[score_LEVEL_min=1,score_LEVEL=1] ~ ~ ~ tp @e[tag=026spw,type=armor_stand] @e[tag=026lv1]
execute @e[tag=026ar1] ~ ~ ~ detect ~ ~ ~ wall_sign * blockdata ~ ~ ~ {Text4:"{\"text\":\"\"}",Text3:"{\"italic\":true,\"color\":\"white\",\"text\":\"Find The Sign\"}",Text2:"{\"underlined\":true,\"color\":\"dark_red\",\"text\":\"▶Prossimo Livello◀\"}",id:"minecraft:sign",Text1:"{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger LEVEL set 2\"},\"text\":\"\"}"}
execute @a[score_026lvl_min=1,score_026lvl=1] ~ ~ ~ execute @e[tag=026rl1] ~ ~ ~ setblock ~ ~-1 ~ stone
execute @a[score_026lvl_min=1,score_026lvl=1] ~ ~ ~ execute @e[tag=026rl1] ~ ~ ~ setblock ~ ~-1 ~ redstone_block 
# Reset #
execute @a[score_LEVEL_min=1,score_LEVEL=2] ~ ~ ~ execute @e[tag=026ar1] ~ ~ ~ setblock ~ ~ ~ air 0 destroy
execute @a[score_LEVEL_min=1,score_LEVEL=2] ~ ~ ~ execute @e[tag=026sl1] ~ ~ ~ setblock ~ ~-1 ~ stone
execute @a[score_LEVEL_min=1,score_LEVEL=2] ~ ~ ~ execute @e[tag=026sl1] ~ ~ ~ setblock ~ ~-1 ~ redstone_block 
#############
#############

# LIVELLO 2 #
tp @a[score_LEVEL_min=2,score_LEVEL=2] @e[tag=026lv2,type=armor_stand]
execute @a[score_LEVEL_min=2,score_LEVEL=2] ~ ~ ~ tp @e[tag=026spw,type=armor_stand] @e[tag=026lv2]
execute @e[tag=026ar2] ~ ~ ~ detect ~ ~ ~ stone_button 13 execute @e[tag=026ar3] ~ ~ ~ setblock ~ ~ ~ wall_sign 4 replace {Text4:"{\"text\":\"\"}",Text3:"{\"italic\":true,\"color\":\"white\",\"text\":\"Find The Sign\"}",z:920920,Text2:"{\"underlined\":true,\"color\":\"dark_red\",\"text\":\"▶Prossimo Livello◀\"}",id:"minecraft:sign",Text1:"{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger LEVEL set 3\"},\"text\":\"\"}"}
# Reset #
execute @a[score_LEVEL_min=2,score_LEVEL=3] ~ ~ ~ execute @e[tag=026ar3] ~ ~ ~ setblock ~ ~ ~ air 0 destroy
execute @a[score_LEVEL_min=2,score_LEVEL=3] ~ ~ ~ execute @e[tag=026sl2] ~ ~ ~ setblock ~ ~-1 ~ stone
execute @a[score_LEVEL_min=2,score_LEVEL=3] ~ ~ ~ execute @e[tag=026sl2] ~ ~ ~ setblock ~ ~-1 ~ redstone_block 
#############
#############

# LIVELLO 3 #
tp @a[score_LEVEL_min=3,score_LEVEL=3] @e[tag=026lv3,type=armor_stand]
execute @a[score_LEVEL_min=3,score_LEVEL=3] ~ ~ ~ tp @e[tag=026spw,type=armor_stand] @e[tag=026lv3]
#############
#############

# LIVELLO 4 #
tp @a[score_LEVEL_min=4,score_LEVEL=4] @e[tag=026lv4,type=armor_stand]
execute @a[score_LEVEL_min=4,score_LEVEL=4] ~ ~ ~ tp @e[tag=026spw,type=armor_stand] @e[tag=026lv4]
execute @a[score_LEVEL_min=-4,score_LEVEL=-4] ~ ~ ~ tp @e[tag=026spw,type=armor_stand] @e[tag=026cp4]
execute @a[score_LEVEL_min=-4,score_LEVEL=-4] ~ ~ ~ playsound minecraft:entity.player.levelup master @s ~ ~ ~ 100 0
execute @e[tag=026ar4] ~ ~ ~ detect ~ ~ ~ stone_button 11 setblock ~ ~1 ~ wall_sign 3 replace {Text4:"{\"text\":\"\"}",Text3:"{\"italic\":true,\"color\":\"white\",\"text\":\"Find The Sign\"}",z:920920,Text2:"{\"underlined\":true,\"color\":\"dark_red\",\"text\":\"▶Prossimo Livello◀\"}",id:"minecraft:sign",Text1:"{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger LEVEL set 5\"},\"text\":\"\"}"}
execute @e[tag=026ar4] ~ ~ ~ detect ~ ~ ~ stone_button 3 setblock ~ ~1 ~ air 0 destroy
#############
#############

# LIVELLO 5 #
tp @a[score_LEVEL_min=5,score_LEVEL=5] @e[tag=026lv5,type=armor_stand]
execute @a[score_LEVEL_min=5,score_LEVEL=5] ~ ~ ~ tp @e[tag=026spw,type=armor_stand] @e[tag=026lv5]
execute @a[score_LEVEL_min=5,score_LEVEL=6] ~ ~ ~ entitydata @e[tag=026cst] {CustomName:"§f§oForse ho esagerato. §r§4§lBisUmTo",DisplayTile:"minecraft:air",Invulnerable:1b,Items:[{Slot:13b,id:"minecraft:sign",Count:1b,tag:{HideFlags:16,BlockEntityTag:{Text4:"{\"text\":\"\"}",Text3:"{\"italic\":true,\"color\":\"white\",\"text\":\"Find The Sign\"}",Text2:"{\"underlined\":true,\"color\":\"dark_red\",\"text\":\"▶Prossimo Livello◀\"}",id:"minecraft:sign",Text1:"{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger LEVEL set 6\"},\"text\":\"\"}"},display:{Lore:["§7§lIDLAREMS!"],Name:"§f§o§lFind the Sign §r- §4§lLV5"},CanPlaceOn:["minecraft:emerald_ore"]},Damage:0s}]}
execute @e[tag=026ar5] ~ ~ ~ detect ~ ~ ~ wall_sign * blockdata ~ ~ ~ {Text4:"{\"text\":\"\"}",Text3:"{\"italic\":true,\"color\":\"white\",\"text\":\"Find The Sign\"}",Text2:"{\"underlined\":true,\"color\":\"dark_red\",\"text\":\"▶Prossimo Livello◀\"}",id:"minecraft:sign",Text1:"{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger LEVEL set 6\"},\"text\":\"\"}"}
# Reset #
execute @a[score_LEVEL_min=5,score_LEVEL=6] ~ ~ ~ execute @e[tag=026ar5] ~ ~ ~ setblock ~ ~ ~ air 0 destroy
#############
#############

# LIVELLO 6 #
tp @a[score_LEVEL_min=6,score_LEVEL=6] @e[tag=026lv6,type=armor_stand]
execute @a[score_LEVEL_min=6,score_LEVEL=6] ~ ~ ~ tp @e[tag=026spw,type=armor_stand] @e[tag=026lv6]
execute @e[tag=026ar7] ~ ~ ~ detect ~ ~ ~ wall_sign * blockdata ~ ~ ~ {Text4:"{\"text\":\"\"}",Text3:"{\"italic\":true,\"color\":\"white\",\"text\":\"Find The Sign\"}",Text2:"{\"underlined\":true,\"color\":\"dark_red\",\"text\":\"▶Prossimo Livello◀\"}",id:"minecraft:sign",Text1:"{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger LEVEL set 7\"},\"text\":\"\"}"}
#############
# Reset #
execute @a[score_LEVEL_min=6,score_LEVEL=7] ~ ~ ~ execute @e[tag=026ar6] ~ ~ ~ blockdata ~ ~ ~ {Items:[{Slot:2b,id:"minecraft:sign",Count:1b,tag:{HideFlags:16,BlockEntityTag:{Text4:"{\"text\":\"\"}",Text3:"{\"italic\":true,\"color\":\"white\",\"text\":\"Find The Sign\"}",Text2:"{\"underlined\":true,\"color\":\"dark_red\",\"text\":\"▶Prossimo Livello◀\"}",id:"minecraft:sign",Text1:"{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger LEVEL set 7\"},\"text\":\"\"}"},display:{Lore:["§7§lVivere senza poesia è come navigare senza..."],Name:"§f§o§lFind the Sign §r- §4§lLV6"},CanPlaceOn:["minecraft:monster_egg"]},Damage:0s}]}
execute @a[score_LEVEL_min=6,score_LEVEL=7] ~ ~ ~ execute @e[tag=026ar7] ~ ~ ~ setblock ~ ~ ~ air 0 destroy
execute @a[score_LEVEL_min=6,score_LEVEL=7] ~ ~ ~ entitydata @e[type=elder_guardian] {Rotation:[270f,0f]}
#############
#############

# LIVELLO 7 #
tp @a[score_LEVEL_min=7,score_LEVEL=7] @e[tag=026lv7,type=armor_stand]
execute @a[score_LEVEL_min=7,score_LEVEL=7] ~ ~ ~ tp @e[tag=026spw,type=armor_stand] @e[tag=026lv7]
effect @a[score_LEVEL_min=7,score_LEVEL=7] minecraft:night_vision 0 1 true
#############
#############

# LIVELLO 8 #
tp @a[score_LEVEL_min=8,score_LEVEL=8] @e[tag=026lv8,type=armor_stand]
execute @a[score_LEVEL_min=8,score_LEVEL=8] ~ ~ ~ tp @e[tag=026spw,type=armor_stand] @e[tag=026lv8]
execute @e[score_LEVEL_min=8,score_LEVEL=9] ~ ~ ~ execute @e[tag=026ar8] ~ ~ ~ blockdata ~ ~ ~ {Items:[{Slot:13b,id:"minecraft:sign",Count:1b,tag:{HideFlags:16,BlockEntityTag:{Text4:"{\"text\":\"\"}",Text3:"{\"italic\":true,\"color\":\"white\",\"text\":\"Find The Sign\"}",Text2:"{\"underlined\":true,\"color\":\"dark_red\",\"text\":\"▶Prossimo Livello◀\"}",id:"minecraft:sign",Text1:"{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger LEVEL set 9\"},\"text\":\"\"}"},display:{Lore:["§7§lWindows XP §r§7ha smesso di funzionare!"],Name:"§f§o§lFind the Sign §r- §4§lLV8"},CanPlaceOn:["minecraft:stained_glass"]},Damage:0s}],id:"minecraft:chest",Lock:"",CustomName:"§f§oFind The Sign"}
execute @e[tag=026ar9] ~ ~ ~ detect ~ ~ ~ wall_sign * blockdata ~ ~ ~ {Text4:"{\"text\":\"\"}",Text3:"{\"italic\":true,\"color\":\"white\",\"text\":\"Find The Sign\"}",Text2:"{\"underlined\":true,\"color\":\"dark_red\",\"text\":\"▶Prossimo Livello◀\"}",id:"minecraft:sign",Text1:"{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger LEVEL set 9\"},\"text\":\"\"}"}
entitydata @e[tag=026moo] {Age:-1024}
#############
# Reset #
execute @a[score_LEVEL_min=8,score_LEVEL=9] ~ ~ ~ execute @e[tag=026sl8] ~ ~ ~ setblock ~ ~-1 ~ stone
execute @a[score_LEVEL_min=8,score_LEVEL=9] ~ ~ ~ execute @e[tag=026sl8] ~ ~ ~ setblock ~ ~-1 ~ redstone_block 
execute @a[score_LEVEL_min=8,score_LEVEL=9] ~ ~ ~ execute @e[tag=026ar9] ~ ~ ~ setblock ~ ~ ~ air 0 destroy
execute @a[score_LEVEL_min=8,score_LEVEL=9] ~ ~ ~ kill @e[tag=026moo]
#############
#############

# LIVELLO 9 #
tp @a[score_LEVEL_min=9,score_LEVEL=9] @e[tag=026lv9,type=armor_stand]
execute @a[score_LEVEL_min=9,score_LEVEL=9] ~ ~ ~ tp @e[tag=026spw,type=armor_stand] @e[tag=026lv9]
entitydata @e[tag=026dra] {Time:1}
# Reset #
execute @a[score_LEVEL_min=9,score_LEVEL=10] ~ ~ ~ execute @e[tag=026sl9] ~ ~ ~ setblock ~ ~-1 ~ stone
execute @a[score_LEVEL_min=9,score_LEVEL=10] ~ ~ ~ execute @e[tag=026sl9] ~ ~ ~ setblock ~ ~-1 ~ redstone_block 
#############
#############

# LIVELLO 10 #
tp @a[score_LEVEL_min=10,score_LEVEL=10] @e[tag=026lv10,type=armor_stand]
execute @a[score_LEVEL_min=10,score_LEVEL=10 ~ ~ ~ tp @e[tag=026spw,type=armor_stand] @e[tag=026lv10]
execute @e[tag=026ar0] ~ ~ ~ detect ~ ~ ~ wall_sign * blockdata ~ ~ ~ {Text4:"{\"text\":\"\"}",Text3:"{\"italic\":true,\"color\":\"white\",\"text\":\"Find The Sign\"}",Text2:"{\"underlined\":true,\"color\":\"dark_red\",\"text\":\"▶Congratulazioni◀\"}",id:"minecraft:sign",Text1:"{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger LEVEL set 11\"},\"text\":\"\"}"}
execute @a[score_026lvl_min=10,score_026lvl=10] ~ ~ ~ detect ~ ~ ~ water * replaceitem entity @s slot.armor.head sign 1 0 {HideFlags:16,BlockEntityTag:{Text4:"{\"text\":\"\"}",Text3:"{\"italic\":true,\"color\":\"white\",\"text\":\"Find The Sign\"}",Text2:"{\"underlined\":true,\"color\":\"dark_red\",\"text\":\"▶Congratulazioni◀\"}",id:"minecraft:sign",Text1:"{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger LEVEL set 11\"},\"text\":\"\"}"},CanPlaceOn:["minecraft:clay"],display:{Lore:["§7§lClay §r§7ottimo direi!"],Name:"§f§o§lFind the Sign §r- §4§lLV10"}}
# Reset #
execute @a[score_LEVEL_min=10,score_LEVEL=11] ~ ~ ~ execute @e[tag=026ar0] ~ ~ ~ setblock ~ ~ ~ air 0 destroy
##############
##############

# CAMBIO LIVELLO #
scoreboard players set @a[score_LEVEL_min=12] LEVEL -1024

clear @a[score_LEVEL_min=0]

execute @a[score_LEVEL_min=1] ~ ~ ~ playsound minecraft:entity.player.levelup master @s
execute @a[score_LEVEL_min=1,score_LEVEL=10] ~ ~ ~ title @s title {"text":"Livello ","extra":[{"score":{"name":"@s","objective":"026lvl"}}]}
execute @a[score_LEVEL_min=1] ~ ~ ~ particle totem ~ ~.8 ~ .4 .8 .4 0 100

execute @a[score_LEVEL_min=-1,score_LEVEL=-1] ~ ~ ~ playsound minecraft:entity.player.levelup master @s
execute @a[score_LEVEL_min=-1,score_LEVEL=-1] ~ ~ ~ title @s title {"text":"Livello ","extra":[{"score":{"name":"@s","objective":"026lvl"}}]}
execute @a[score_LEVEL_min=-1,score_LEVEL=-1] ~ ~ ~ particle totem ~ ~.8 ~ .4 .8 .4 0 100
scoreboard players set @a[score_LEVEL_min=-1,score_LEVEL=0,score_026jll=3] 026jll 3
scoreboard players reset @a[score_LEVEL_min=-1,score_LEVEL=-1] 026dts

execute @a[score_LEVEL_min=-1,score_LEVEL=-1] ~ ~ ~ title @s subtitle {"text":"Atrio","color":"dark_red"}
execute @a[score_LEVEL_min=-1,score_LEVEL=-1] ~ ~ ~ tellraw @s ["",{"text":"\n▶ Livello 0 - Atrio ◀","bold":true,"color":"dark_red"},{"text":"\n\nPiccola premessa: nei futuri livelli è possibile che il cartello appaia solo una volta premuto un bottone.\n"}]
execute @a[score_LEVEL_min=1,score_LEVEL=1] ~ ~ ~ title @s subtitle {"text":"Pianura","color":"dark_green"}
execute @a[score_LEVEL_min=1,score_LEVEL=1] ~ ~ ~ tellraw @s ["",{"text":"\n▶ Livello 1 - Pianura ◀\n","bold":true,"color":"dark_green"}]
execute @a[score_LEVEL_min=2,score_LEVEL=2] ~ ~ ~ title @s subtitle {"text":"Colline innevate"}
execute @a[score_LEVEL_min=2,score_LEVEL=2] ~ ~ ~ tellraw @s ["",{"text":"\n▶ Livello 2 - Colline innevate ◀\n","bold":true}]
execute @a[score_LEVEL_min=3,score_LEVEL=3] ~ ~ ~ title @s subtitle {"text":"Inferi","color":"gold"}
execute @a[score_LEVEL_min=3,score_LEVEL=3] ~ ~ ~ tellraw @s ["",{"text":"\n▶ Livello 3 - Inferi ◀\n","bold":true,"color":"gold"}]
execute @a[score_LEVEL_min=4,score_LEVEL=4] ~ ~ ~ title @s subtitle {"text":"Mesa","color":"red"}
execute @a[score_LEVEL_min=4,score_LEVEL=4] ~ ~ ~ tellraw @s ["",{"text":"\n▶ Livello 4 - Mesa ◀\n","bold":true,"color":"red"}]
execute @a[score_LEVEL_min=5,score_LEVEL=5] ~ ~ ~ title @s subtitle {"text":"Miniera","color":"gray"}
execute @a[score_LEVEL_min=5,score_LEVEL=5] ~ ~ ~ tellraw @s ["",{"text":"\n▶ Livello 5 - Miniera ◀\n","bold":true,"color":"gray"}]
execute @a[score_LEVEL_min=6,score_LEVEL=6] ~ ~ ~ title @s subtitle {"text":"Oceano","color":"dark_aqua"}
execute @a[score_LEVEL_min=6,score_LEVEL=6] ~ ~ ~ tellraw @s ["",{"text":"\n▶ Livello 6 - Oceano ◀\n","bold":true,"color":"dark_aqua"}]
execute @a[score_LEVEL_min=7,score_LEVEL=7] ~ ~ ~ title @s subtitle {"text":"Giungla","color":"green"}
execute @a[score_LEVEL_min=7,score_LEVEL=7] ~ ~ ~ tellraw @s ["",{"text":"\n▶ Livello 7 - Giungla ◀\n","bold":true,"color":"green"}]
execute @a[score_LEVEL_min=8,score_LEVEL=8] ~ ~ ~ title @s subtitle {"text":"Funghi","color":"dark_gray"}
execute @a[score_LEVEL_min=8,score_LEVEL=8] ~ ~ ~ tellraw @s ["",{"text":"\n▶ Livello 8 - Funghi ◀\n","bold":true,"color":"dark_gray"}]
execute @a[score_LEVEL_min=9,score_LEVEL=9] ~ ~ ~ title @s subtitle {"text":"Omega","color":"light_purple"}
execute @a[score_LEVEL_min=9,score_LEVEL=9] ~ ~ ~ tellraw @s ["",{"text":"\n▶ Livello 9 - Omega ◀\n","bold":true,"color":"light_purple"}]
execute @a[score_LEVEL_min=10,score_LEVEL=10] ~ ~ ~ title @s subtitle {"text":"Finale","color":"aqua"}
execute @a[score_LEVEL_min=10,score_LEVEL=10] ~ ~ ~ tellraw @s ["",{"text":"\n▶ Livello 10 - Finale ◀\n","bold":true,"color":"aqua"}]
gamemode 3 @a[score_LEVEL_min=11]
execute @a[score_LEVEL_min=11,score_LEVEL=11] ~ ~ ~ title @s title {"text":"Congratulazioni","color":"dark_red"}
execute @a[score_LEVEL_min=11,score_LEVEL=11] ~ ~ ~ title @s subtitle {"text":"Find The Sign","color":"white","italic":true}
execute @a[score_LEVEL_min=11,score_LEVEL=11] ~ ~ ~ scoreboard players set @s 026lvl 0
execute @a[score_LEVEL_min=11,score_LEVEL=11] ~ ~ ~ tellraw @s ["",{"text":"\nHai completato la mappa \""},{"text":"Find The Sign","italic":true},{"text":"\" in"},{"text":" ","bold":true},{"score":{"name":"@e[tag=026spw,type=armor_stand]","objective":"026p1h"},"bold":true},{"text":":","bold":true},{"score":{"name":"@e[tag=026spw,type=armor_stand]","objective":"026p9m"},"bold":true},{"score":{"name":"@e[tag=026spw,type=armor_stand]","objective":"026p1m"},"bold":true},{"text":":","bold":true},{"score":{"name":"@e[tag=026spw,type=armor_stand]","objective":"026p9s"},"bold":true},{"score":{"name":"@e[tag=026spw,type=armor_stand]","objective":"026p1s"},"bold":true},{"text":", sei morto "},{"score":{"name":"@s","objective":"026dts"},"bold":true},{"text":" ","bold":true},{"text":"volte e non hai utilizzato "},{"score":{"name":"@s","objective":"026jll"},"bold":true},{"text":" jolly.\n"}]

execute @a[score_LEVEL_min=-1,score_LEVEL=-1] ~ ~ ~ tellraw @s ["",{"text":"RESETTA IL LIVELLO","color":"gold","italic":true,"clickEvent":{"action":"run_command","value":"/trigger LEVEL set -110"}},{"text":"\n "}]
execute @a[score_LEVEL_min=1,score_LEVEL=10] ~ ~ ~ tellraw @s ["",{"text":"RESETTA IL LIVELLO","color":"gold","italic":true,"clickEvent":{"action":"run_command","value":"/trigger LEVEL set -110"}},{"text":"\n "}]

execute @a[score_LEVEL_min=1,score_LEVEL=10] ~ ~ ~ tellraw @s ["",{"text":"USA UN JOLLY","color":"red","italic":true,"clickEvent":{"action":"run_command","value":"/trigger LEVEL set -118"}},{"text":"\n"},{"text":"Hai ancora ","color":"gray"},{"score":{"name":"@s","objective":"026jll"},"color":"gray"},{"text":" Jolly","color":"gray"},{"text":"\n "}]

scoreboard players tag @a[score_LEVEL_min=-1,score_LEVEL=10] remove 026gjl
##################
##################

# TEMPO E JOLLY #
scoreboard players tag @a[score_LEVEL_min=-1,score_LEVEL=-1] add 026igm
scoreboard players tag @a[score_LEVEL_min=11,score_LEVEL=11] remove 026igm
scoreboard players tag @a[score_LEVEL_min=0,score_LEVEL=0] remove 026igm
execute @a[score_LEVEL_min=11,score_LEVEL=11] ~ ~ ~ scoreboard players reset @e[tag=026spw,type=armor_stand]
execute @a[score_LEVEL_min=-1,score_LEVEL=-1] ~ ~ ~ scoreboard players reset @e[tag=026spw,type=armor_stand]
execute @a[score_LEVEL_min=-1,score_LEVEL=-1] ~ ~ ~ scoreboard players add @e[tag=026spw,type=armor_stand] 026p1s 0
execute @a[score_LEVEL_min=-1,score_LEVEL=-1] ~ ~ ~ scoreboard players add @e[tag=026spw,type=armor_stand] 026p9s 0
execute @a[score_LEVEL_min=-1,score_LEVEL=-1] ~ ~ ~ scoreboard players add @e[tag=026spw,type=armor_stand] 026p1m 0
execute @a[score_LEVEL_min=-1,score_LEVEL=-1] ~ ~ ~ scoreboard players add @e[tag=026spw,type=armor_stand] 026p9m 0
execute @a[score_LEVEL_min=-1,score_LEVEL=-1] ~ ~ ~ scoreboard players add @e[tag=026spw,type=armor_stand] 026p1h 0
execute @r[c=1,tag=026igm] ~ ~ ~ scoreboard players add @e[tag=026spw,type=armor_stand] 026p1t 1
execute @r[tag=026igm] ~ ~ ~ scoreboard players add @e[score_026p1t_min=20] 026p1s 1
execute @r[tag=026igm] ~ ~ ~ scoreboard players remove @e[score_026p1t_min=20] 026p1t 20
execute @r[tag=026igm] ~ ~ ~ scoreboard players add @e[score_026p1s_min=10] 026p9s 1
execute @r[tag=026igm] ~ ~ ~ scoreboard players remove @e[score_026p1s_min=10] 026p1s 10
execute @r[tag=026igm] ~ ~ ~ scoreboard players add @e[score_026p9s_min=6] 026p1m 1
execute @r[tag=026igm] ~ ~ ~ scoreboard players remove @e[score_026p9s_min=6] 026p9s 6
execute @r[tag=026igm] ~ ~ ~ scoreboard players add @e[score_026p1m_min=10] 026p9m 1
execute @r[tag=026igm] ~ ~ ~ scoreboard players remove @e[score_026p1m_min=10] 026p1m 10
execute @r[tag=026igm] ~ ~ ~ scoreboard players add @e[score_026p9m_min=6] 026p1h 1
execute @r[tag=026igm] ~ ~ ~ scoreboard players remove @e[score_026p9m_min=6] 026p9m 6

scoreboard players tag @a[score_LEVEL_min=-1,score_LEVEL=0] remove 026gjl
scoreboard players tag @a[score_LEVEL_min=-1,score_LEVEL=0] remove 026fjl
execute @e[tag=026spw,type=armor_stand,score_026p1h_min=1] ~ ~ ~ title @a[tag=026igm,score_026jll_min=4,score_026lvl_min=0,score_026lvl=10] actionbar ["",{"score":{"name":"@e[tag=026spw,type=armor_stand]","objective":"026p1h"}},{"text":":"},{"score":{"name":"@e[tag=026spw,type=armor_stand]","objective":"026p9m"}},{"score":{"name":"@e[tag=026spw,type=armor_stand]","objective":"026p1m"}},{"text":":"},{"score":{"name":"@e[tag=026spw,type=armor_stand]","objective":"026p9s"}},{"score":{"name":"@e[tag=026spw,type=armor_stand]","objective":"026p1s"}},{"text":" - "},{"text":"✪ ✪ ✪","color":"green"},{"text":" ✪","color":"gold"}]
execute @e[tag=026spw,type=armor_stand,score_026p1h_min=1] ~ ~ ~ title @a[tag=026igm,score_026jll_min=3,score_026jll=3,score_026lvl_min=0,score_026lvl=10] actionbar ["",{"score":{"name":"@e[tag=026spw,type=armor_stand]","objective":"026p1h"}},{"text":":"},{"score":{"name":"@e[tag=026spw,type=armor_stand]","objective":"026p9m"}},{"score":{"name":"@e[tag=026spw,type=armor_stand]","objective":"026p1m"}},{"text":":"},{"score":{"name":"@e[tag=026spw,type=armor_stand]","objective":"026p9s"}},{"score":{"name":"@e[tag=026spw,type=armor_stand]","objective":"026p1s"}},{"text":" - "},{"text":"✪ ✪ ✪","color":"green"}]
execute @e[tag=026spw,type=armor_stand,score_026p1h_min=1] ~ ~ ~ title @a[tag=026igm,score_026jll_min=2,score_026jll=2,score_026lvl_min=0,score_026lvl=10] actionbar ["",{"score":{"name":"@e[tag=026spw,type=armor_stand]","objective":"026p1h"}},{"text":":"},{"score":{"name":"@e[tag=026spw,type=armor_stand]","objective":"026p9m"}},{"score":{"name":"@e[tag=026spw,type=armor_stand]","objective":"026p1m"}},{"text":":"},{"score":{"name":"@e[tag=026spw,type=armor_stand]","objective":"026p9s"}},{"score":{"name":"@e[tag=026spw,type=armor_stand]","objective":"026p1s"}},{"text":" - "},{"text":"✪ ✪ ","color":"green"},{"text":"✪","color":"dark_red"}]
execute @e[tag=026spw,type=armor_stand,score_026p1h_min=1] ~ ~ ~ title @a[tag=026igm,score_026jll_min=1,score_026jll=1,score_026lvl_min=0,score_026lvl=10] actionbar ["",{"score":{"name":"@e[tag=026spw,type=armor_stand]","objective":"026p1h"}},{"text":":"},{"score":{"name":"@e[tag=026spw,type=armor_stand]","objective":"026p9m"}},{"score":{"name":"@e[tag=026spw,type=armor_stand]","objective":"026p1m"}},{"text":":"},{"score":{"name":"@e[tag=026spw,type=armor_stand]","objective":"026p9s"}},{"score":{"name":"@e[tag=026spw,type=armor_stand]","objective":"026p1s"}},{"text":" - "},{"text":"✪ ","color":"green"},{"text":"✪ ✪","color":"dark_red"}]
execute @e[tag=026spw,type=armor_stand,score_026p1h_min=1] ~ ~ ~ title @a[tag=026igm,score_026jll_min=0,score_026jll=0,score_026lvl_min=0,score_026lvl=10] actionbar ["",{"score":{"name":"@e[tag=026spw,type=armor_stand]","objective":"026p1h"}},{"text":":"},{"score":{"name":"@e[tag=026spw,type=armor_stand]","objective":"026p9m"}},{"score":{"name":"@e[tag=026spw,type=armor_stand]","objective":"026p1m"}},{"text":":"},{"score":{"name":"@e[tag=026spw,type=armor_stand]","objective":"026p9s"}},{"score":{"name":"@e[tag=026spw,type=armor_stand]","objective":"026p1s"}},{"text":" - "},{"text":"✪ ✪ ✪","color":"dark_red"}]

execute @e[tag=026spw,type=armor_stand,score_026p1h_min=0,score_026p1h=0] ~ ~ ~ title @a[tag=026igm,score_026jll_min=4,score_026lvl_min=0,score_026lvl=10] actionbar ["",{"score":{"name":"@e[tag=026spw,type=armor_stand]","objective":"026p9m"}},{"score":{"name":"@e[tag=026spw,type=armor_stand]","objective":"026p1m"}},{"text":":"},{"score":{"name":"@e[tag=026spw,type=armor_stand]","objective":"026p9s"}},{"score":{"name":"@e[tag=026spw,type=armor_stand]","objective":"026p1s"}},{"text":" - "},{"text":"✪ ✪ ✪","color":"green"},{"text":" ✪","color":"gold"}]
execute @e[tag=026spw,type=armor_stand,score_026p1h_min=0,score_026p1h=0] ~ ~ ~ title @a[tag=026igm,score_026jll_min=3,score_026jll=3,score_026lvl_min=0,score_026lvl=10] actionbar ["",{"score":{"name":"@e[tag=026spw,type=armor_stand]","objective":"026p9m"}},{"score":{"name":"@e[tag=026spw,type=armor_stand]","objective":"026p1m"}},{"text":":"},{"score":{"name":"@e[tag=026spw,type=armor_stand]","objective":"026p9s"}},{"score":{"name":"@e[tag=026spw,type=armor_stand]","objective":"026p1s"}},{"text":" - "},{"text":"✪ ✪ ✪","color":"green"}]
execute @e[tag=026spw,type=armor_stand,score_026p1h_min=0,score_026p1h=0] ~ ~ ~ title @a[tag=026igm,score_026jll_min=2,score_026jll=2,score_026lvl_min=0,score_026lvl=10] actionbar ["",{"score":{"name":"@e[tag=026spw,type=armor_stand]","objective":"026p9m"}},{"score":{"name":"@e[tag=026spw,type=armor_stand]","objective":"026p1m"}},{"text":":"},{"score":{"name":"@e[tag=026spw,type=armor_stand]","objective":"026p9s"}},{"score":{"name":"@e[tag=026spw,type=armor_stand]","objective":"026p1s"}},{"text":" - "},{"text":"✪ ✪ ","color":"green"},{"text":"✪","color":"dark_red"}]
execute @e[tag=026spw,type=armor_stand,score_026p1h_min=0,score_026p1h=0] ~ ~ ~ title @a[tag=026igm,score_026jll_min=1,score_026jll=1,score_026lvl_min=0,score_026lvl=10] actionbar ["",{"score":{"name":"@e[tag=026spw,type=armor_stand]","objective":"026p9m"}},{"score":{"name":"@e[tag=026spw,type=armor_stand]","objective":"026p1m"}},{"text":":"},{"score":{"name":"@e[tag=026spw,type=armor_stand]","objective":"026p9s"}},{"score":{"name":"@e[tag=026spw,type=armor_stand]","objective":"026p1s"}},{"text":" - "},{"text":"✪ ","color":"green"},{"text":"✪ ✪","color":"dark_red"}]
execute @e[tag=026spw,type=armor_stand,score_026p1h_min=0,score_026p1h=0] ~ ~ ~ title @a[tag=026igm,score_026jll_min=0,score_026jll=0,score_026lvl_min=0,score_026lvl=10] actionbar ["",{"score":{"name":"@e[tag=026spw,type=armor_stand]","objective":"026p9m"}},{"score":{"name":"@e[tag=026spw,type=armor_stand]","objective":"026p1m"}},{"text":":"},{"score":{"name":"@e[tag=026spw,type=armor_stand]","objective":"026p9s"}},{"score":{"name":"@e[tag=026spw,type=armor_stand]","objective":"026p1s"}},{"text":" - "},{"text":"✪ ✪ ✪","color":"dark_red"}]

# Jolly #
execute @a[tag=026rst] ~ ~ ~ scoreboard players tag @a add 026gjl
scoreboard players tag @a[tag=026rst] remove 026rst

execute @a[tag=026gjl,score_LEVEL_min=-118,score_LEVEL=-118] ~ ~ ~ tellraw @a {"text":"\nHai già usato il Jolly in questo livello.\n","color":"dark_red"}
execute @a[tag=026gjl,score_LEVEL_min=-118,score_LEVEL=-118] ~ ~ ~ playsound minecraft:entity.endermen.hurt player @a ~ ~ ~ 100 .1
execute @a[tag=026gjl] ~ ~ ~ scoreboard players set @a LEVEL -1024

execute @a[score_026jll=0,score_LEVEL_min=-118,score_LEVEL=-118] ~ ~ ~ tellraw @a {"text":"\nHai già usato tutti Jolly.\n","color":"dark_red"}
execute @a[score_026jll=0,score_LEVEL_min=-118,score_LEVEL=-118] ~ ~ ~ playsound minecraft:entity.endermen.hurt player @a ~ ~ ~ 100 .1
execute @a[score_026jll=0,score_LEVEL_min=-118,score_LEVEL=-118] ~ ~ ~ scoreboard players set @a LEVEL -1024


execute @a[score_LEVEL_min=-118,score_LEVEL=-118,score_026lvl_min=1,score_026lvl=1] ~ ~ ~ tellraw @a {"text":"\nLa pazienza è la virtù dei forti.\n","color":"gray"}

execute @a[score_LEVEL_min=-118,score_LEVEL=-118,score_026lvl_min=2,score_026lvl=2] ~ ~ ~ tellraw @a {"text":"\nQuando a letto stanco sali, lascia i crucci agli stivali.\n","color":"gray"}

execute @a[score_LEVEL_min=-118,score_LEVEL=-118,score_026lvl_min=3,score_026lvl=3] ~ ~ ~ tellraw @a {"text":"\nL'odio segue l'amore, come la cenere il fuoco.\n","color":"gray"}
execute @a[score_LEVEL_min=-118,score_LEVEL=-118,score_026lvl_min=3,score_026lvl=3] ~ ~ ~ execute @e[tag=026jl4] ~ ~ ~ summon fireworks_rocket ~1 ~2 ~1 {FireworksItem:{id:fireworks,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;16745753,16734492],FadeColors:[I;16764426,16774917]},{Type:4,Colors:[I;16775501],FadeColors:[I;16757532]}]}}}}

execute @a[score_LEVEL_min=-118,score_LEVEL=-118,score_026lvl_min=4,score_026lvl=4] ~ ~ ~ tellraw @a {"text":"\nDal destino non si può scappare, lo si può solo rinviare l'appuntamento con il destino.\n","color":"gray"}
execute @a[score_LEVEL_min=-118,score_LEVEL=-118,score_026lvl_min=4,score_026lvl=4] ~ ~ ~ playsound minecraft:entity.endermen.teleport master @a ~ ~ ~
execute @a[score_LEVEL_min=-118,score_LEVEL=-118,score_026lvl_min=4,score_026lvl=4] ~ ~ ~ execute @e[tag=026ar4] ~ ~ ~ teleport @a ~2 ~.5 ~2

execute @a[score_LEVEL_min=-118,score_LEVEL=-118,score_026lvl_min=5,score_026lvl=5] ~ ~ ~ tellraw @a {"text":"\nNon sempre la pecora nera è l'intrusa.\n","color":"gray"}

execute @a[score_LEVEL_min=-118,score_LEVEL=-118,score_026lvl_min=6,score_026lvl=6] ~ ~ ~ tellraw @a {"text":"\nL'antico guardiano ti indicherà la strada versi il successo.\n","color":"gray"}
execute @a[score_LEVEL_min=-118,score_LEVEL=-118,score_026lvl_min=6,score_026lvl=6] ~ ~ ~ entitydata @e[type=elder_guardian] {Rotation:[320f,4f]}

execute @a[score_LEVEL_min=-118,score_LEVEL=-118,score_026lvl_min=7,score_026lvl=7] ~ ~ ~ tellraw @a {"text":"\nLe luci rosse sono come la stella polare: è irraggiungibile, ma indica la retta via.\n","color":"gray"}

execute @a[score_LEVEL_min=-118,score_LEVEL=-118,score_026lvl_min=8,score_026lvl=8] ~ ~ ~ tellraw @a {"text":"\nCi vogliono molti anni per diventare giovane.\n","color":"gray"}
execute @a[score_LEVEL_min=-118,score_LEVEL=-118,score_026lvl_min=8,score_026lvl=8] ~ ~ ~ execute @e[tag=026ar8] ~ ~ ~ summon mooshroom ~ ~-.7 ~.7 {Rotation:[45f,45f],Age:-1024,NoAI:1,Invulnerable:1,Tags:["026moo"]}

execute @a[score_LEVEL_min=-118,score_LEVEL=-118,score_026lvl_min=9,score_026lvl=9] ~ ~ ~ tellraw @a {"text":"\nA volte per raggiungere il proprio obiettivo non basta salire, ma bisogna anche saper scendere.\n","color":"gray"}

execute @a[score_LEVEL_min=-118,score_LEVEL=-118,score_026lvl_min=10,score_026lvl=10] ~ ~ ~ tellraw @a {"text":"\nL'acqua può solo rinfrescarti le idee.\n","color":"gray"}

execute @a[score_LEVEL_min=-118,score_LEVEL=-118] ~ ~ ~ playsound minecraft:item.bottle.fill_dragonbreath player @a ~ ~ ~ 100
execute @a[score_LEVEL_min=-118,score_LEVEL=-118] ~ ~ ~ scoreboard players operation @a 026jll = @s 026jll
execute @a[score_LEVEL_min=-118,score_LEVEL=-118] ~ ~ ~ scoreboard players remove @a 026jll 1
execute @a[score_LEVEL_min=-118,score_LEVEL=-118,score_026lvl_min=1,score_026lvl=10] ~ ~ ~ scoreboard players tag @a add 026gjl

################
################

scoreboard players set @a LEVEL -1024
scoreboard players add @a 026lvl 0
