scoreboard objectives add rng dummy
scoreboard players set MIN rng 0

scoreboard objectives add timer dummy
scoreboard players add time timer 1
scoreboard players set TIMER timer 100
scoreboard players operation time timer %= TIMER timer

execute as @a[nbt={Inventory:[{}]}] if score time timer matches 0 run function minecraft:rand
execute as @a[nbt=!{Inventory:[{}]}] if score time timer matches 0 run playsound minecraft:item.book.put master @s ~ ~ ~ 1 1 1
