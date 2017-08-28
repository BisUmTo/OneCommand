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

scoreboard objectives add 026dth stat.deaths
scoreboard objectives add 026dts deathCount
scoreboard objectives add 026lvl dummy
scoreboard objectives add LEVEL trigger
scoreboard teams add 026nCl
scoreboard teams option 026nCl collisionRule never
scoreboard players enable @a LEVEL

execute @a[score_LEVEL_min=-1] ~ ~ ~ scoreboard players operation @a[rm=0] LEVEL = @s LEVEL
execute @a ~ ~ ~ scoreboard players operation @s[score_LEVEL_min=0] 026lvl = @s LEVEL

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

# CREDITI #
execute @a[score_LEVEL_min=-83,score_LEVEL=-83] ~ ~ ~ tellraw @a ["",{"text":"\n\n\n▶ BisUmTo ◀","color":"dark_red","bold":true},{"text":"\nCiao! Sono BisUmTo, un giovane RedStoner e OneCommander Italiano appassionato alle CustomMap.\nIn questa Mappa mi sono dedicato alla parte funzionale di quest'ultima cercando di non utilizzare alcun command_block all'interno del gioco.\n\n▶ YouTube: "},{"text":"BisUmTo","italic":true,"underlined":true,"color":"dark_red","clickEvent":{"action":"open_url","value":"https://youtube.com/BisUmTo"},"hoverEvent":{"action":"show_text","value":"Clicca QUI per visitare il suo canale YouTube"}},{"text":"\n\n▶ Telegram: "},{"text":"@BisUmTo","italic":true,"underlined":true,"color":"dark_red","clickEvent":{"action":"open_url","value":"https://t.me/BisUmTo"},"hoverEvent":{"action":"show_text","value":"Clicca QUI per visitare il suo canale Telegram"}}]
execute @a[score_LEVEL_min=-92,score_LEVEL=-92] ~ ~ ~ tellraw @a ["",{"text":"\n\n\n\n▶ marcobarba92 ◀","bold":true,"color":"dark_blue"},{"text":"\nHola! Sono Marco, l'ideatore ed amministratore del progetto.\nIn questa Mappa si è dedicato alla progettazione dei livelli e alla realizzazione grezza di questi ultimi.\n\n▶ Instagram: "},{"text":"marcobarba92","italic":true,"underlined":true,"color":"dark_blue","clickEvent":{"action":"open_url","value":"https://www.instagram.com/marcobarba92/"},"hoverEvent":{"action":"show_text","value":"Clicca QUI per visitare il suo profilo Instagram"}},{"text":"\n\n"}]
execute @a[score_LEVEL_min=-9,score_LEVEL=-9] ~ ~ ~ tellraw @a ["",{"text":"\n\n\n▶ MinoGILD_A ◀","color":"light_purple","bold":true},{"text":"\nEhi! Ciao! Sono Mino! Sono un builder italiano specializzato in piccole costruzioni!\nIn questa Mappa mi sono dedicato alla parte del design, in particolare ai dettagli.\n\n▶ YouTube: "},{"text":"Mino","italic":true,"underlined":true,"color":"light_purple","clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UCbO8XPuOW93PsUN0202PCxQ"},"hoverEvent":{"action":"show_text","value":"Clicca QUI per visitare il suo canale YouTube"}},{"text":"\n\n▶ Telegram: "},{"text":"@","italic":true,"underlined":true,"color":"light_purple","clickEvent":{"action":"open_url","value":"https://t.me/minoemina"},"hoverEvent":{"action":"show_text","value":"Clicca QUI per visitare il suo gruppo Telegram"}},{"text":"minoemina","italic":true,"underlined":true,"color":"light_purple","hoverEvent":{"action":"show_text","value":"Clicca QUI per visitare il suo gruppo Telegram"}}]
###########
###########

# REGOLE #
execute @a[score_LEVEL_min=-101,score_LEVEL=-101] ~ ~ ~ 

execute @a[score_LEVEL_min=-102,score_LEVEL=-102] ~ ~ ~ execute @e[tag=026rar] ~ ~ ~ setblock ~ ~-1 ~ wall_sign 3 replace {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger LEVEL set -104\"}}",Text2:"{\"text\":\"\\u25b6 2 \\u25c0\",\"bold\":true,\"underlined\":true,\"color\":\"dark_red\"}",Text3:"{\"text\":\"Non Arrenderti\"}"}
execute @a[score_LEVEL_min=-102,score_LEVEL=-102] ~ ~ ~ execute @e[tag=026rar] ~ ~ ~ setblock ~ ~ ~ air 0 destroy
execute @a[score_LEVEL_min=-102,score_LEVEL=-102] ~ ~ ~ playsound minecraft:entity.player.attack.nodamage block @s ~ ~ ~ 10 1 1
execute @a[score_LEVEL_min=-104,score_LEVEL=-104] ~ ~ ~ execute @e[tag=026rar] ~ ~ ~ setblock ~ ~ ~ wall_sign 3 replace {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger LEVEL set -102\"}}",Text2:"{\"text\":\"\\u25b6 2 \\u25c0\",\"bold\":true,\"underlined\":true,\"color\":\"dark_red\"}",Text3:"{\"text\":\"Non Arrenderti\"}"}
execute @a[score_LEVEL_min=-104,score_LEVEL=-104] ~ ~ ~ execute @e[tag=026rar] ~ ~ ~ setblock ~ ~-1 ~ air 0 destroy
execute @a[score_LEVEL_min=-104,score_LEVEL=-104] ~ ~ ~ scoreboard players add @e[tag=026rar] 026dts 1
execute @a[score_LEVEL_min=-104,score_LEVEL=-104] ~ ~ ~ execute @e[tag=026rar,score_026dts_min=20] ~ ~ ~ say LO SAI CHE E' INUTILE?
execute @a[score_LEVEL_min=-104,score_LEVEL=-104] ~ ~ ~ scoreboard players reset @e[tag=026rar,score_026dts_min=20] 026dts

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
#############
# Reset #
execute @a[score_LEVEL_min=8,score_LEVEL=9] ~ ~ ~ execute @e[tag=026sl8] ~ ~ ~ setblock ~ ~-1 ~ stone
execute @a[score_LEVEL_min=8,score_LEVEL=9] ~ ~ ~ execute @e[tag=026sl8] ~ ~ ~ setblock ~ ~-1 ~ redstone_block 
execute @a[score_LEVEL_min=8,score_LEVEL=9] ~ ~ ~ execute @e[tag=026ar9] ~ ~ ~ setblock ~ ~ ~ air 0 destroy
#############
#############

# LIVELLO 9 #
tp @a[score_LEVEL_min=9,score_LEVEL=9] @e[tag=026lv9,type=armor_stand]
execute @a[score_LEVEL_min=9,score_LEVEL=9] ~ ~ ~ tp @e[tag=026spw,type=armor_stand] @e[tag=026lv9]
entitydata @e[tag=026dra] {Time:1}
#############
#############

# LIVELLO 10 #
tp @a[score_LEVEL_min=10,score_LEVEL=10] @e[tag=026lv10,type=armor_stand]
execute @a[score_LEVEL_min=10,score_LEVEL=10 ~ ~ ~ tp @e[tag=026spw,type=armor_stand] @e[tag=026lv10]
execute @e[tag=026ar0] ~ ~ ~ detect ~ ~ ~ wall_sign * blockdata ~ ~ ~ {Text4:"{\"text\":\"\"}",Text3:"{\"italic\":true,\"color\":\"white\",\"text\":\"Find The Sign\"}",Text2:"{\"underlined\":true,\"color\":\"dark_red\",\"text\":\"▶Congratulazioni◀\"}",id:"minecraft:sign",Text1:"{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger LEVEL set 11\"},\"text\":\"\"}"}
execute @a[score_026lvl_min=10,score_026lvl=10] ~ ~ ~ detect ~ ~ ~ water * replaceitem entity @s slot.armor.head sign 1 0 {CanPlaceOn:["minecraft:clay"]}
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

execute @a[score_LEVEL_min=-1,score_LEVEL=-1] ~ ~ ~ title @a subtitle {"text":"Nome Del Livello 0"}
execute @a[score_LEVEL_min=1,score_LEVEL=1] ~ ~ ~ title @a subtitle {"text":"Nome Del Livello 1"}
execute @a[score_LEVEL_min=2,score_LEVEL=2] ~ ~ ~ title @a subtitle {"text":"Nome Del Livello 2"}
execute @a[score_LEVEL_min=3,score_LEVEL=3] ~ ~ ~ title @a subtitle {"text":"Nome Del Livello 3"}
execute @a[score_LEVEL_min=4,score_LEVEL=4] ~ ~ ~ title @a subtitle {"text":"Nome Del Livello 4"}
execute @a[score_LEVEL_min=5,score_LEVEL=5] ~ ~ ~ title @a subtitle {"text":"Nome Del Livello 5"}
execute @a[score_LEVEL_min=6,score_LEVEL=6] ~ ~ ~ title @a subtitle {"text":"Nome Del Livello 6"}
execute @a[score_LEVEL_min=7,score_LEVEL=7] ~ ~ ~ title @a subtitle {"text":"Nome Del Livello 7"}
execute @a[score_LEVEL_min=8,score_LEVEL=8] ~ ~ ~ title @a subtitle {"text":"Nome Del Livello 8"}
execute @a[score_LEVEL_min=9,score_LEVEL=9] ~ ~ ~ title @a subtitle {"text":"Nome Del Livello 9"}
execute @a[score_LEVEL_min=10,score_LEVEL=10] ~ ~ ~ title @a subtitle {"text":"Nome Del Livello 10"}
gamemode 3 @a[score_LEVEL_min=11]
execute @a[score_LEVEL_min=11,score_LEVEL=11] ~ ~ ~ title @s title {"text":"Congratulazioni","color":"dark_red"}
execute @a[score_LEVEL_min=11,score_LEVEL=11] ~ ~ ~ title @s subtitle {"text":"Find The Sign","color":"white","italic":true}
##################
##################

# TEMPO #
scoreboard players set @a LEVEL -1024
scoreboard players add @a 026lvl 0
