# spicyuhc:start

gamerule naturalRegeneration false
execute if score doWeatherCycle config matches 0 run gamerule doWeatherCycle false
execute if score doWeatherCycle config matches 1 run gamerule doWeatherCycle true
execute if score doDaylightCycle config matches 0 run gamerule doDaylightCycle false
execute if score doDaylightCycle config matches 1 run gamerule doDaylightCycle true
weather clear

clear @a
advancement revoke @a everything

time set 0
difficulty easy

gamemode survival @a

execute store result score start time run time query gametime

scoreboard players set #RunConfig config 1
function spicyuhc:config

tag @a remove t1
tag @a remove t2
tag @a add t
function spicyuhc:crea_squadre

# bossbar set spicyuhc:timebar players @a[tag=t]

title @a times 5 60 5
title @a[tag=t1] title {"text":"RivalUHC","color":"red"}
title @a[tag=t2] title {"text":"RivalUHC","color":"blue"}
