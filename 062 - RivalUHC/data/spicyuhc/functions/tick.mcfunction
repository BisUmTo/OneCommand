# spicyuhc:tick

execute store result score servertime time run time query gametime
execute store result score worldborder time run worldborder get

# BOSSBAR
execute store result bossbar spicyuhc:timebar value run scoreboard players get worldborder time
execute if score worldborder time = WbInizio config run bossbar set spicyuhc:timebar color white
execute if score worldborder time > WbFine config if score worldborder time < WbInizio config run bossbar set spicyuhc:timebar color yellow
execute if score worldborder time <= WbFine config run bossbar set spicyuhc:timebar color red

scoreboard players operation ingame time = servertime time
scoreboard players operation ingame time -= start time

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

scoreboard players set #RunConfig config 4
function spicyuhc:config

# CHIUSURA MONDO
execute if score start time matches 1.. if score ingame time = WbTempoDimMax config run scoreboard players set #RunConfig config 2
execute if score start time matches 1.. if score ingame time = WbTempoDimMax config run function spicyuhc:config

# MORTE
execute as @a[scores={death=1..}] at @s run playsound entity.zombie_villager.cure voice @a ~ ~ ~ .5 2 .5
tag @a[scores={death=1..}] remove t
gamemode spectator @a[scores={death=1..}]
scoreboard players reset @a death

# MESSAGGIO EPISODIO
scoreboard players operation episodiotime time = ingame time
scoreboard players operation episodiotime time %= DurataEpisodio config

scoreboard players operation episodio time = ingame time
scoreboard players operation episodio time /= DurataEpisodio config

execute if score start time matches 1.. if score episodiotime time matches 0 if score episodio time matches 1.. run scoreboard players set #RunConfig config 3
execute if score start time matches 1.. if score episodiotime time matches 0 if score episodio time matches 1.. run function spicyuhc:config

# RIVELA SQUADRE
execute if score start time matches 1.. if score ingame time = RivelaSquadre config run playsound minecraft:entity.wither.break_block master @a ~ ~ ~ 2 0.1 1
execute if score start time matches 1.. if score ingame time = RivelaSquadre config run team join t1 @a[tag=t1]
execute if score start time matches 1.. if score ingame time = RivelaSquadre config run team join t2 @a[tag=t2]

# VITTORIA
execute if entity @e[tag=t] unless entity @a[tag=t,tag=t2] run title @a[tag=t1] title {"text":"Hai vinto!","color":"red"}
execute if entity @e[tag=t] unless entity @a[tag=t,tag=t2] run title @a[tag=t2] title {"text":"Hai perso!","color":"red"}
execute if entity @e[tag=t] unless entity @a[tag=t,tag=t2] run tag @a remove t

execute if entity @e[tag=t] unless entity @a[tag=t,tag=t1] run title @a[tag=t2] title {"text":"Hai vinto!","color":"blue"}
execute if entity @e[tag=t] unless entity @a[tag=t,tag=t1] run title @a[tag=t1] title {"text":"Hai perso!","color":"blue"}
execute if entity @e[tag=t] unless entity @a[tag=t,tag=t1] run tag @a remove t
