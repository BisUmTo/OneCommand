# raiduhc:start

gamerule naturalRegeneration false
gamerule doWeatherCycle false
weather clear

time set 0
worldborder center -516 276
worldborder set 2000
spreadplayers -516 276 500 1000 true @a[team=!]
gamemode survival @a[team=!]
advancement grant @a[team=!] only raiduhc:root
bossbar set raiduhc:timebar players @a[team=!]

execute store result score start time run time query gametime
