# atlanticuhc:start

team modify rosso color red
team modify rosso friendlyFire false
team modify rosa color light_purple
team modify rosa friendlyFire false
team modify verde color green
team modify verde friendlyFire false
team modify blu color blue
team modify blu friendlyFire false
team modify giallo color yellow
team modify giallo friendlyFire false

gamerule naturalRegeneration false
# gamerule doWeatherCycle false
# weather clear
difficulty normal

advancement revoke @a everything
recipe take @a *

time set 0
worldborder center -3109 -2854
worldborder set 4000
# spreadplayers -516 276 500 1000 true @a[team=!]
tp @a[team=rosso] -3534 71.5 -4762
tp @a[team=rosa] -1411 71.5 -1128
tp @a[team=verde] -4484 71.5 -4749
tp @a[team=blu] -4838 71.5 -3414
tp @a[team=giallo] -4793 71.5 -1343

gamemode survival @a[team=!]
advancement grant @a[team=!] only atlanticuhc:root
bossbar set atlanticuhc:timebar players @a[team=!]

execute store result score start time run time query gametime
