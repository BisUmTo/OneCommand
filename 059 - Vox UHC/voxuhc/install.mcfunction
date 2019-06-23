# voxuhc:install
gamerule commandBlockOutput false
gamerule logAdminCommands false
gamerule doWeatherCycle false
gamerule doDaylightCycle false
gamerule naturalRegeneration false
gamerule gameLoopFunction voxuhc:main

scoreboard objectives add voxdth stat.deaths
scoreboard objectives add voxkll playerKillCount Kills
scoreboard objectives setdisplay belowName voxkll
scoreboard objectives add voxhlt health
scoreboard objectives setdisplay list voxhlt
scoreboard objectives add voxcrt dummy
scoreboard objectives add voxdrp stat.drop.minecraft.skull
scoreboard objectives add voxres stat.timeSinceDeath

# Centre
kill @e[tag=voxctr]
summon armor_stand 0 100 0 {Invisible:1,Marker:1,NoGravity:1,Tags:["voxctr"]}
setworldspawn 0 100 0
worldborder center 0 0

# WorldBorder Freeze
summon armor_stand 0 100 0 {Invisible:1,Marker:1,NoGravity:1,Tags:["voxwbr"]}

# Timer
scoreboard objectives add voxtmr dummy
stats entity @e[tag=voxctr] set QueryResult @s voxtmr
scoreboard players add @e[tag=voxctr] voxtmr 0

scoreboard players set #72000 voxtmr 72000
scoreboard players set #24000 voxtmr 24000
scoreboard players set #1200 voxtmr 1200
scoreboard players set #20 voxtmr 20
scoreboard players set #10 voxtmr 10

scoreboard objectives add SuccessCount dummy
stats entity @e[tag=voxctr] set SuccessCount @s SuccessCount
scoreboard players add @e[tag=voxctr] SuccessCount 0
