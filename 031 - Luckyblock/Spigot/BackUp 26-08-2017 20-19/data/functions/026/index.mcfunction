gamerule commandBlockOutput false
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule doTileDrops false
gamerule doEntityDrops false
gamerule doMobSpawning false
gamerule keepInventory true
gamerule logAdminCommands true
gamerule showDeathMessages false
gamerule doLimitedCrafting false
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

effect @a minecraft:saturation 999999 254 true
effect @a[score_026lvl=6] minecraft:night_vision 999999 0 true
effect @a[score_026lvl_min=9] minecraft:night_vision 999999 0 true
execute @a[score_026lvl_min=3,score_026lvl=5] ~ ~ ~ detect ~ ~.1 ~ lava * effect @s minecraft:instant_damage 1 5 true
execute @e[score_LEVEL_min=0] ~ ~ ~ kill @e[type=item]

# RESPAWN #
scoreboard players tag @a[score_026dth_min=1] remove 026spw 
tp @a[tag=!026spw] @e[tag=026spw,type=armor_stand]
gamemode 2 @a[tag=!026spw,m=!2]
scoreboard players tag @a add 026spw
execute @e[type=armor_stand,tag=026spw] ~ ~ ~ scoreboard players set @a[r=0] 026dth 0

# CREDITI #
execute @a[score_LEVEL_min=-83,score_LEVEL=-83]
execute @a[score_LEVEL_min=-92,score_LEVEL=-92]
execute @a[score_LEVEL_min=-114,score_LEVEL=-9]

# HUB #
execute @e[tag=026bis] ~ ~ ~ execute @p[score_026lvl_min=0,score_026lvl=0] ~ ~ ~ entitydata @e[tag=026bis,r=6] {DisplayOffset:85}
execute @e[tag=026bis] ~ ~ ~ execute @p[score_026lvl_min=0,score_026lvl=0] ~ ~ ~ entitydata @e[tag=026bis,rm=6] {DisplayOffset:30}

# LIVELLO 0 #
tp @a[score_LEVEL_min=0,score_LEVEL=0] @e[tag=026lv0,type=armor_stand]
execute @a[score_LEVEL_min=0,score_LEVEL=0] ~ ~ ~ tp @e[tag=026spw,type=armor_stand] @e[tag=026lv0]
execute @a[score_026lvl_min=0,score_026lvl=0] ~ ~ ~ detect ~.5 ~ ~ lava * effect @s minecraft:fire_resistance 999999 254 true
execute @a[score_026lvl_min=1] ~ ~ ~ effect @s minecraft:fire_resistance 0 255 true

# LIVELLO -1 #
scoreboard players set @a[score_LEVEL=-1,score_LEVEL_min=-1] 026lvl 0
execute @a[score_LEVEL_min=-1,score_LEVEL=-1] ~ ~ ~ execute @e[tag=026str] ~ ~ ~ setblock ~ ~ ~ air 0 destroy
execute @a[score_LEVEL_min=1,score_LEVEL=1] ~ ~ ~ execute @e[tag=026str] ~ ~ ~ setblock ~ ~ ~ wall_sign 5 replace {Text4:"{\"text\":\"\"}",Text3:"{\"italic\":true,\"color\":\"white\",\"text\":\"Find The Sign\"}",z:920920,Text2:"{\"underlined\":true,\"color\":\"dark_red\",\"text\":\"▶INIZIA LA MAPPA◀\"}",id:"minecraft:sign",Text1:"{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger LEVEL set -1\"},\"text\":\"\"}"}

# LIVELLO 1 #
tp @a[score_LEVEL_min=1,score_LEVEL=1] @e[tag=026lv1,type=armor_stand]
execute @a[score_LEVEL_min=1,score_LEVEL=1] ~ ~ ~ tp @e[tag=026spw,type=armor_stand] @e[tag=026lv1]
execute @e[tag=026ar1] ~ ~ ~ detect ~ ~ ~ wall_sign * blockdata ~ ~ ~ {Text4:"{\"text\":\"\"}",Text3:"{\"italic\":true,\"color\":\"white\",\"text\":\"Find The Sign\"}",Text2:"{\"underlined\":true,\"color\":\"dark_red\",\"text\":\"▶Prossimo Livello◀\"}",id:"minecraft:sign",Text1:"{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger LEVEL set 2\"},\"text\":\"\"}"}
execute @a[score_LEVEL_min=2,score_LEVEL=2] ~ ~ ~ execute @e[tag=026ar1] ~ ~ ~ setblock ~ ~ ~ air 0 destroy

execute @a[score_026lvl_min=1,score_026lvl=1] ~ ~ ~ execute @e[tag=026rl1] ~ ~ ~ setblock ~ ~-1 ~ stone
execute @a[score_026lvl_min=1,score_026lvl=1] ~ ~ ~ execute @e[tag=026rl1] ~ ~ ~ setblock ~ ~-1 ~ redstone_block 

# Reset LIVELLO 1 #
execute @a[score_LEVEL_min=1,score_LEVEL=2] ~ ~ ~ execute @e[tag=026sl1] ~ ~ ~ setblock ~ ~-1 ~ stone
execute @a[score_LEVEL_min=1,score_LEVEL=2] ~ ~ ~ execute @e[tag=026sl1] ~ ~ ~ setblock ~ ~-1 ~ redstone_block 

# LIVELLO 2 #
tp @a[score_LEVEL_min=2,score_LEVEL=2] @e[tag=026lv2,type=armor_stand]
execute @a[score_LEVEL_min=2,score_LEVEL=2] ~ ~ ~ tp @e[tag=026spw,type=armor_stand] @e[tag=026lv2]
execute @e[tag=026ar2] ~ ~ ~ detect ~ ~ ~ stone_button 13 execute @e[tag=026ar3] ~ ~ ~ setblock ~ ~ ~ wall_sign 4 replace {Text4:"{\"text\":\"\"}",Text3:"{\"italic\":true,\"color\":\"white\",\"text\":\"Find The Sign\"}",z:920920,Text2:"{\"underlined\":true,\"color\":\"dark_red\",\"text\":\"▶Prossimo Livello◀\"}",id:"minecraft:sign",Text1:"{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger LEVEL set 3\"},\"text\":\"\"}"}
execute @a[score_LEVEL_min=3,score_LEVEL=3] ~ ~ ~ execute @e[tag=026ar3] ~ ~ ~ setblock ~ ~ ~ air 0 destroy
clear @a[score_026lvl_min=2,score_026lvl=2] tallgrass 2

# Reset LIVELLO 2 #
execute @a[score_LEVEL_min=2,score_LEVEL=3] ~ ~ ~ execute @e[tag=026sl2] ~ ~ ~ setblock ~ ~-1 ~ stone
execute @a[score_LEVEL_min=2,score_LEVEL=3] ~ ~ ~ execute @e[tag=026sl2] ~ ~ ~ setblock ~ ~-1 ~ redstone_block 

# LIVELLO 3 #
tp @a[score_LEVEL_min=3,score_LEVEL=3] @e[tag=026lv3,type=armor_stand]
execute @a[score_LEVEL_min=3,score_LEVEL=3] ~ ~ ~ tp @e[tag=026spw,type=armor_stand] @e[tag=026lv3]

# LIVELLO 4 #
tp @a[score_LEVEL_min=4,score_LEVEL=4] @e[tag=026lv4,type=armor_stand]
execute @a[score_LEVEL_min=4,score_LEVEL=4] ~ ~ ~ tp @e[tag=026spw,type=armor_stand] @e[tag=026lv4]
execute @a[score_LEVEL_min=-4,score_LEVEL=-4] ~ ~ ~ tp @e[tag=026spw,type=armor_stand] @e[tag=026cp4]
execute @a[score_LEVEL_min=-4,score_LEVEL=-4] ~ ~ ~ playsound minecraft:entity.player.levelup master @s ~ ~ ~ 100 0
execute @e[tag=026ar4] ~ ~ ~ detect ~ ~ ~ stone_button 11 setblock ~ ~1 ~ wall_sign 3 replace {Text4:"{\"text\":\"\"}",Text3:"{\"italic\":true,\"color\":\"white\",\"text\":\"Find The Sign\"}",z:920920,Text2:"{\"underlined\":true,\"color\":\"dark_red\",\"text\":\"▶Prossimo Livello◀\"}",id:"minecraft:sign",Text1:"{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger LEVEL set 5\"},\"text\":\"\"}"}
execute @e[tag=026ar4] ~ ~ ~ detect ~ ~ ~ stone_button 3 setblock ~ ~1 ~ air 0 destroy
execute @a[score_LEVEL_min=3,score_LEVEL=3] ~ ~ ~ execute @e[tag=026ar3] ~ ~ ~ setblock ~ ~ ~ air 0 destroy
clear @a[score_026lvl_min=2,score_026lvl=2] tallgrass 2

# LIVELLO 5 #
tp @a[score_LEVEL_min=5,score_LEVEL=5] @e[tag=026lv5,type=armor_stand]
execute @a[score_LEVEL_min=5,score_LEVEL=5] ~ ~ ~ tp @e[tag=026spw,type=armor_stand] @e[tag=026lv5]
execute @a[score_LEVEL_min=5,score_LEVEL=6] ~ ~ ~ entitydata @e[tag=026cst] {CustomName:"§f§oForse ho esagerato. §r§4§lBisUmTo",DisplayTile:"minecraft:air",Invulnerable:1b,Items:[{Slot:13b,id:"minecraft:sign",Count:1b,tag:{HideFlags:16,BlockEntityTag:{Text4:"{\"text\":\"\"}",Text3:"{\"italic\":true,\"color\":\"white\",\"text\":\"Find The Sign\"}",Text2:"{\"underlined\":true,\"color\":\"dark_red\",\"text\":\"▶Prossimo Livello◀\"}",id:"minecraft:sign",Text1:"{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger LEVEL set 6\"},\"text\":\"\"}"},display:{Lore:["§7§lIDLAREMS!"],Name:"§f§o§lFind the Sign §r- §4§lLV5"},CanPlaceOn:["minecraft:emerald_ore"]},Damage:0s}]}
execute @e[tag=026ar5] ~ ~ ~ detect ~ ~ ~ wall_sign * blockdata ~ ~ ~ {Text4:"{\"text\":\"\"}",Text3:"{\"italic\":true,\"color\":\"white\",\"text\":\"Find The Sign\"}",Text2:"{\"underlined\":true,\"color\":\"dark_red\",\"text\":\"▶Prossimo Livello◀\"}",id:"minecraft:sign",Text1:"{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger LEVEL set 6\"},\"text\":\"\"}"}
execute @a[score_LEVEL_min=5,score_LEVEL=6] ~ ~ ~ execute @e[tag=026ar5] ~ ~ ~ setblock ~ ~ ~ air 0 destroy

# LIVELLO 6 #
tp @a[score_LEVEL_min=6,score_LEVEL=6] @e[tag=026lv6,type=armor_stand]
execute @a[score_LEVEL_min=6,score_LEVEL=6] ~ ~ ~ tp @e[tag=026spw,type=armor_stand] @e[tag=026lv6]
execute @e[tag=026ar7] ~ ~ ~ detect ~ ~ ~ wall_sign * blockdata ~ ~ ~ {Text4:"{\"text\":\"\"}",Text3:"{\"italic\":true,\"color\":\"white\",\"text\":\"Find The Sign\"}",Text2:"{\"underlined\":true,\"color\":\"dark_red\",\"text\":\"▶Prossimo Livello◀\"}",id:"minecraft:sign",Text1:"{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger LEVEL set 7\"},\"text\":\"\"}"}

# Reset LIVELLO 6 #
execute @a[score_LEVEL_min=6,score_LEVEL=7] ~ ~ ~ execute @e[tag=026ar6] ~ ~ ~ blockdata ~ ~ ~ {Items:[{Slot:2b,id:"minecraft:sign",Count:1b,tag:{HideFlags:16,BlockEntityTag:{Text4:"{\"text\":\"\"}",Text3:"{\"italic\":true,\"color\":\"white\",\"text\":\"Find The Sign\"}",Text2:"{\"underlined\":true,\"color\":\"dark_red\",\"text\":\"▶Prossimo Livello◀\"}",id:"minecraft:sign",Text1:"{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger LEVEL set 7\"},\"text\":\"\"}"},display:{Lore:["§7§lVivere senza poesia è come navigare senza..."],Name:"§f§o§lFind the Sign §r- §4§lLV6"},CanPlaceOn:["minecraft:monster_egg"]},Damage:0s}]}
execute @a[score_LEVEL_min=6,score_LEVEL=7] ~ ~ ~ execute @e[tag=026ar7] ~ ~ ~ setblock ~ ~ ~ air 0 destroy

# LIVELLO 7 #
tp @a[score_LEVEL_min=7,score_LEVEL=7] @e[tag=026lv7,type=armor_stand]
execute @a[score_LEVEL_min=7,score_LEVEL=7] ~ ~ ~ tp @e[tag=026spw,type=armor_stand] @e[tag=026lv7]
effect @a[score_LEVEL_min=7,score_LEVEL=7] minecraft:night_vision 0 1 true

# LIVELLO 8 #
tp @a[score_LEVEL_min=8,score_LEVEL=8] @e[tag=026lv8,type=armor_stand]
execute @a[score_LEVEL_min=8,score_LEVEL=8] ~ ~ ~ tp @e[tag=026spw,type=armor_stand] @e[tag=026lv8]
execute @e[score_LEVEL_min=8,score_LEVEL=9] ~ ~ ~ execute @e[tag=026ar8] ~ ~ ~ blockdata ~ ~ ~ {Items:[{Slot:13b,id:"minecraft:sign",Count:1b,tag:{HideFlags:16,BlockEntityTag:{Text4:"{\"text\":\"\"}",Text3:"{\"italic\":true,\"color\":\"white\",\"text\":\"Find The Sign\"}",Text2:"{\"underlined\":true,\"color\":\"dark_red\",\"text\":\"▶Prossimo Livello◀\"}",id:"minecraft:sign",Text1:"{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger LEVEL set 9\"},\"text\":\"\"}"},display:{Lore:["§7§lWindows XP §r§7ha smesso di funzionare!"],Name:"§f§o§lFind the Sign §r- §4§lLV8"},CanPlaceOn:["minecraft:stained_glass"]},Damage:0s}],id:"minecraft:chest",Lock:"",CustomName:"§f§oFind The Sign"}
execute @e[tag=026ar9] ~ ~ ~ detect ~ ~ ~ wall_sign * blockdata ~ ~ ~ {Text4:"{\"text\":\"\"}",Text3:"{\"italic\":true,\"color\":\"white\",\"text\":\"Find The Sign\"}",Text2:"{\"underlined\":true,\"color\":\"dark_red\",\"text\":\"▶Prossimo Livello◀\"}",id:"minecraft:sign",Text1:"{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger LEVEL set 9\"},\"text\":\"\"}"}


# Reset LIVELLO 8 #
execute @a[score_LEVEL_min=8,score_LEVEL=9] ~ ~ ~ execute @e[tag=026sl8] ~ ~ ~ setblock ~ ~-1 ~ stone
execute @a[score_LEVEL_min=8,score_LEVEL=9] ~ ~ ~ execute @e[tag=026sl8] ~ ~ ~ setblock ~ ~-1 ~ redstone_block 
execute @a[score_LEVEL_min=8,score_LEVEL=9] ~ ~ ~ execute @e[tag=026ar9] ~ ~ ~ setblock ~ ~ ~ air 0 destroy

# LIVELLO 9 #
tp @a[score_LEVEL_min=9,score_LEVEL=9] @e[tag=026lv9,type=armor_stand]
execute @a[score_LEVEL_min=9,score_LEVEL=9] ~ ~ ~ tp @e[tag=026spw,type=armor_stand] @e[tag=026lv9]
entitydata @e[tag=026dra] {Time:1}

# LIVELLO 10 #
tp @a[score_LEVEL_min=10,score_LEVEL=10] @e[tag=026lv10,type=armor_stand]
execute @a[score_LEVEL_min=10,score_LEVEL=10 ~ ~ ~ tp @e[tag=026spw,type=armor_stand] @e[tag=026lv10]

# CAMBIO LIVELLO #
scoreboard players set @a[score_LEVEL_min=11] LEVEL -1024

clear @a[score_LEVEL_min=0]

execute @a[score_LEVEL_min=1] ~ ~ ~ playsound minecraft:entity.player.levelup master @s
execute @a[score_LEVEL_min=1] ~ ~ ~ title @s title {"text":"Livello ","extra":[{"score":{"name":"@s","objective":"026lvl"}}]}
execute @a[score_LEVEL_min=1] ~ ~ ~ particle totem ~ ~.8 ~ .4 .8 .4 0 100

execute @a[score_LEVEL_min=-1,score_LEVEL=-1] ~ ~ ~ playsound minecraft:entity.player.levelup master @s
execute @a[score_LEVEL_min=-1,score_LEVEL=-1] ~ ~ ~ title @s title {"text":"Livello ","extra":[{"score":{"name":"@s","objective":"026lvl"}}]}
execute @a[score_LEVEL_min=-1,score_LEVEL=-1] ~ ~ ~ particle totem ~ ~.8 ~ .4 .8 .4 0 100


scoreboard players set @a LEVEL -1024
scoreboard players add @a 026lvl 0
