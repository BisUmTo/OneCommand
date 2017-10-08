gamerule commandBlockOutput false
gamerule doDaylightCycle false
gamerule doTileDrops false

scoreboard objectives add 026dth stat.deaths
scoreboard objectives add 026lvl dummy
scoreboard objectives add LEVEL trigger
scoreboard players enable @a LEVEL

effect @a minecraft:saturation 999999 254 true


# RESPAWN #
scoreboard players tag @a[score_026dth_min=1] remove 026spw 
tp @a[tag=!026spw] @e[tag=026spw,type=armor_stand]
scoreboard players tag @a add 026spw
execute @e[type=armor_stand,tag=026spw] ~ ~ ~ scoreboard players set @a[r=0] 026dth 0

# CREDITI 
execute @a[score_LEVEL_min=-83,score_LEVEL=-83]
execute @a[score_LEVEL_min=-92,score_LEVEL=-92]
execute @a[score_LEVEL_min=-114,score_LEVEL=-114]

# CAMBIO LIVELLO #
clear @a[score_LEVEL_min=1]

# HUB #
execute @e[tag=026bis] ~ ~ ~ execute @p[score_026lvl_min=0,score_026lvl=0] ~ ~ ~ entitydata @e[tag=026bis,r=6] {DisplayOffset:85}
execute @e[tag=026bis] ~ ~ ~ execute @p[score_026lvl_min=0,score_026lvl=0] ~ ~ ~ entitydata @e[tag=026bis,rm=6] {DisplayOffset:30}

# LIVELLO 0 #
execute @a[score_LEVEL_min=-1,score_LEVEL=-1] ~ ~ ~ execute @e[tag=026str] ~ ~ ~ setblock ~ ~ ~ air 0 destroy
execute @a[score_LEVEL_min=1,score_LEVEL=1] ~ ~ ~ execute @e[tag=026str] ~ ~ ~ setblock ~ ~ ~ wall_sign 5 replace {Text4:"{\"text\":\"\"}",Text3:"{\"italic\":true,\"color\":\"white\",\"text\":\"Find The Sign\"}",z:920920,Text2:"{\"underlined\":true,\"color\":\"dark_red\",\"text\":\"▶INIZIA LA MAPPA◀\"}",id:"minecraft:sign",Text1:"{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger LEVEL set -1\"},\"text\":\"\"}"}

execute @a[score_026lvl_min=0,score_026lvl=0] ~ ~ ~ detect ~.5 ~ ~ lava * effect @s minecraft:fire_resistance 999999 254 true
execute @a[score_026lvl_min=1] ~ ~ ~ effect @s minecraft:fire_resistance 0 255 true

# LIVELLO 1 #
tp @a[score_LEVEL_min=1,score_LEVEL=1] @e[tag=026lv1,type=armor_stand]
execute @a[score_LEVEL_min=1,score_LEVEL=1] ~ ~ ~ tp @e[tag=026spw,type=armor_stand] @e[tag=026lv1]

# LIVELLO 2 #
tp @a[score_LEVEL_min=2,score_LEVEL=2] @e[tag=026lv2,type=armor_stand]
execute @a[score_LEVEL_min=2,score_LEVEL=2] ~ ~ ~ tp @e[tag=026spw,type=armor_stand] @e[tag=026lv2]

# LIVELLO 3 #
tp @a[score_LEVEL_min=3,score_LEVEL=3] @e[tag=026lv3,type=armor_stand]
execute @a[score_LEVEL_min=3,score_LEVEL=3] ~ ~ ~ tp @e[tag=026spw,type=armor_stand] @e[tag=026lv3]

# LIVELLO 4 #
tp @a[score_LEVEL_min=4,score_LEVEL=4] @e[tag=026lv4,type=armor_stand]
execute @a[score_LEVEL_min=4,score_LEVEL=4] ~ ~ ~ tp @e[tag=026spw,type=armor_stand] @e[tag=026lv4]

# LIVELLO 5 #
tp @a[score_LEVEL_min=5,score_LEVEL=5] @e[tag=026lv5,type=armor_stand]
execute @a[score_LEVEL_min=3,score_LEVEL=5] ~ ~ ~ tp @e[tag=026spw,type=armor_stand] @e[tag=026lv5]

# LIVELLO 6 #
tp @a[score_LEVEL_min=6,score_LEVEL=6] @e[tag=026lv6,type=armor_stand]
execute @a[score_LEVEL_min=6,score_LEVEL=6] ~ ~ ~ tp @e[tag=026spw,type=armor_stand] @e[tag=026lv6]

# LIVELLO 7 #
tp @a[score_LEVEL_min=7,score_LEVEL=7] @e[tag=026lv7,type=armor_stand]
execute @a[score_LEVEL_min=7,score_LEVEL=7] ~ ~ ~ tp @e[tag=026spw,type=armor_stand] @e[tag=026lv7]

# LIVELLO 8 #
tp @a[score_LEVEL_min=8,score_LEVEL=8] @e[tag=026lv8,type=armor_stand]
execute @a[score_LEVEL_min=8,score_LEVEL=8] ~ ~ ~ tp @e[tag=026spw,type=armor_stand] @e[tag=026lv8]

tp @a[score_LEVEL_min=9,score_LEVEL=9] @e[tag=026lv9,type=armor_stand]
execute @a[score_LEVEL_min=9,score_LEVEL=9] ~ ~ ~ tp @e[tag=026spw,type=armor_stand] @e[tag=026lv9]

tp @a[score_LEVEL_min=10,score_LEVEL=10] @e[tag=026lv10,type=armor_stand]
execute @a[score_LEVEL_min=10,score_LEVEL=10 ~ ~ ~ tp @e[tag=026spw,type=armor_stand] @e[tag=026lv10]

execute @a ~ ~ ~ scoreboard players operation @s[score_LEVEL_min=1] 026lvl = @s LEVEL

scoreboard players set @a LEVEL 0
scoreboard players add @a 026lvl 0
