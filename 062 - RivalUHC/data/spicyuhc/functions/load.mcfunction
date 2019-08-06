# spicyuhc:load

scoreboard objectives add time dummy

scoreboard objectives add health health
scoreboard objectives setdisplay list health

scoreboard objectives add tmp dummy

scoreboard objectives add death deathCount

scoreboard objectives add const dummy
scoreboard players set 2 const 2
scoreboard players set 10 const 10
scoreboard players set 20 const 20
scoreboard players set 64 const 64
scoreboard players set 100 const 100
scoreboard players set 600 const 600
scoreboard players set 1000 const 1000
scoreboard players set 1200 const 1200
scoreboard players set 10000 const 10000
scoreboard players set 18000 const 18000
scoreboard players set 32767 const 32767
scoreboard players set 72000 const 72000

bossbar add spicyuhc:timebar ""
bossbar set spicyuhc:timebar max 2000

team add t1
team add t2
team modify t1 color red
team modify t2 color blue
team modify t1 friendlyFire false
team modify t2 friendlyFire false

function spicyuhc:config
