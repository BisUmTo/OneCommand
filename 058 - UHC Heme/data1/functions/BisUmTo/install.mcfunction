scoreboard objectives add 028dth stat.deaths
scoreboard teams add 028tm1
scoreboard teams add 028tm2
scoreboard teams add 028tm3
scoreboard teams add 028tm4
scoreboard teams option 028tm1 color dark_aqua
scoreboard teams option 028tm2 color green
scoreboard teams option 028tm3 color dark_red
scoreboard teams option 028tm4 color yellow
scoreboard objectives add 028trg trigger
scoreboard objectives add 028p1t dummy
scoreboard objectives add 028p1s dummy
scoreboard objectives add 028p9s dummy
scoreboard objectives add 028p1m dummy
scoreboard objectives add 028p9m dummy
scoreboard objectives add 028p1h dummy
gamerule doWeatherCycle false
gamerule naturalRegeneration false
scoreboard teams option 028tm1 friendlyfire false
scoreboard teams option 028tm2 friendlyfire false
scoreboard teams option 028tm3 friendlyfire false
scoreboard teams option 028tm4 friendlyfire false
scoreboard objectives add 028kll playerKillCount Kills
scoreboard objectives setdisplay belowName 028kll
scoreboard objectives add 028hlt health
scoreboard objectives setdisplay list 028hlt
kill @e[tag=028ctr]
summon armor_stand ~ ~ ~3 {Invisible:1,Marker:1,NoGravity:1,Tags:["028ctr"]}
setworldspawn ~ ~ ~3
execute @e[tag=028ctr] ~ ~ ~ worldborder center ~ ~ 
kill @e[tag=028m20]
summon area_effect_cloud ~ ~ ~3 {Duration:24000,Radius:0,Tags:["028m20"]}
kill @e[tag=028wbr]
summon armor_stand ~ ~ ~3 {Invisible:1,Marker:1,NoGravity:1,Tags:["028wbr"]}
scoreboard objectives add 028crt dummy
scoreboard objectives add 028drp stat.drop.minecraft.skull
gamerule gameLoopFunction bisumto:index
