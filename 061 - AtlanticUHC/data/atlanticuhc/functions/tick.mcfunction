# atlanticuhc:tick

execute store result score servertime time run time query gametime
execute store result score worldborder time run worldborder get

# TIMEBAR COLOR
execute store result score Tempo time run time query daytime
execute store result bossbar atlanticuhc:timebar value run scoreboard players get Tempo time
execute unless score ingame time matches 144000.. if score Tempo time matches ..12541 run bossbar set atlanticuhc:timebar color yellow
execute unless score ingame time matches 144000.. if score Tempo time matches 23458.. run bossbar set atlanticuhc:timebar color yellow
execute unless score ingame time matches 144000.. if score Tempo time matches 12541..23458 run bossbar set atlanticuhc:timebar color blue

scoreboard players operation ingame time = servertime time
scoreboard players operation ingame time -= start time

# MATCH
execute if score ingame time matches 144000.. run bossbar set atlanticuhc:timebar color red
execute if score ingame time matches 144000 run gamerule doDaylightCycle false
execute if score ingame time matches 144000 run gamerule doMobSpawning false
execute if score ingame time matches 144000 run time set 13000
execute if score ingame time matches 144000 run difficulty peaceful
execute if score ingame time matches 144001 run difficulty normal

# TIMEBAR
scoreboard players operation Ore time = ingame time
scoreboard players operation Ore time /= 72000 const

scoreboard players operation Minuti time = ingame time
scoreboard players operation Minuti time %= 72000 const
scoreboard players operation Minuti time /= 1200 const

scoreboard players operation Secondi time = ingame time
scoreboard players operation Secondi time %= 1200 const
scoreboard players operation Secondi time /= 20 const

scoreboard players operation DecineMinuti time = Minuti time
scoreboard players operation DecineMinuti time /= 10 const
scoreboard players operation Minuti time %= 10 const

scoreboard players operation DecineSecondi time = Secondi time
scoreboard players operation DecineSecondi time /= 10 const
scoreboard players operation Secondi time %= 10 const

bossbar set atlanticuhc:timebar name ["Atlantic UHC - ",{"score":{"objective":"time","name":"Ore"}},":",{"score":{"objective":"time","name":"DecineMinuti"}},{"score":{"objective":"time","name":"Minuti"}},":",{"score":{"objective":"time","name":"DecineSecondi"}},{"score":{"objective":"time","name":"Secondi"}}]

# CASSA
scoreboard players operation loot time = ingame time
scoreboard players operation loot time %= 600 const

#execute if score start time matches 1.. if score loot time matches 599 as @e[type=bat,limit=1,sort=random] store result entity @s Health double 0 at @s run summon minecraft:falling_block ~ 255 ~ {BlockState:{Name:"minecraft:barrel"},TileEntityData:{LootTable:"minecraft:chests/atlanticuhc",CustomName:"\"Atlantic UHC - LootBarrel\""},Time:1,DropItem:0b,Tags:["lootchest"]}
#execute if score start time matches 1.. if score loot time matches 599 as @e[type=falling_block] run tellraw @a [{"nbt":"Pos[0]","entity":"@s"}," ~ ",{"nbt":"Pos[2]","entity":"@s"}]
execute as @e[tag=lootchest] at @s run particle minecraft:smoke ~ ~8 ~ 0 4 0 0 80 force
execute as @e[tag=lootchest] at @s run playsound minecraft:block.tripwire.detach ambient @a[distance=..150] ~ ~ ~ 2 0 .01
execute as @e[tag=lootchest] at @s unless block ~ ~-5 ~ air run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 20 force
execute as @e[tag=lootchest] at @s unless block ~ ~-10 ~ air run playsound minecraft:entity.generic.explode ambient @a[distance=..150] ~ ~ ~ 2 0 .2

# CHIUSURA MONDO
# execute if score ingame time matches 54000 run worldborder set 125 900

# BAD OMEN
# execute if score ingame time matches 72000 run effect give @a bad_omen 1000000 5 true

# MORTE
execute as @a[scores={death=1..}] at @s run playsound entity.zombie_villager.cure voice @a ~ ~ ~ .5 2 .5
gamemode spectator @a[scores={death=1..}]
scoreboard players reset @a death

# IRONMAN
execute store result score nodamagedplayer time if entity @a[advancements={atlanticuhc:take_damage=false}]
execute if score nodamagedplayer time matches 1 run advancement grant @a[advancements={atlanticuhc:take_damage=false}] only atlanticuhc:ironman

# EPISODIO
scoreboard players operation episodiotime time = ingame time
scoreboard players operation episodiotime time %= 18000 const

scoreboard players operation episodio time = ingame time
scoreboard players operation episodio time /= 18000 const

execute if score start time matches 2.. if score episodiotime time matches 0 run tellraw @a [{"text":"","color":"yellow"},{"text":"Atlantic UHC - Termine del "},{"score":{"objective":"time","name":"episodio"}},{"text":"° episodio!"}]

# NO PHANTOM
execute as @e[type=phantom] at @s run tp @s ~ ~-100 ~
execute as @e[type=phantom] at @s run data merge entity @s {Silent:1b}

# NO STRENGHT
clear @a potion{Potion:"minecraft:long_strength"}
clear @a potion{Potion:"minecraft:strength"}
