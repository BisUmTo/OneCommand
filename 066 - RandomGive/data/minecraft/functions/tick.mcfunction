scoreboard objectives add rng dummy
scoreboard players set MIN rng 0
scoreboard players set MAX rng 877

scoreboard objectives add timer dummy
scoreboard players add time timer 1
scoreboard players set TIMER timer 100
scoreboard players operation time timer %= TIMER timer

execute as @a if score time timer matches 0 run function minecraft:rand
