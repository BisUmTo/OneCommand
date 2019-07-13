# spicyuhc:config

scoreboard objectives add config dummy

# WorldBorder
scoreboard players set WbInizio config 2000
execute if score #RunConfig config matches 1 run worldborder set 2000
execute if score #RunConfig config matches 1 run worldborder center 0 0
scoreboard players set WbTempoDimMax config 54000
scoreboard players set WbFine config 125
execute if score #RunConfig config matches 2 run worldborder set 125 900

# Centro e dispersione
execute if score #RunConfig config matches 1 run spreadplayers 0 0 500 1000 false @a

# Gamerule globali
scoreboard players set doWeatherCycle config 0
scoreboard players set doDaylightCycle config 1

# Messaggio epidosio
scoreboard players set DurataEpisodio config 18000
execute if score #RunConfig config matches 3 run tellraw @a [{"text":"","color":"yellow"},{"text":"SpicyUHC - Termine del "},{"score":{"objective":"time","name":"episodio"}},{"text":"° episodio!"}]

# Bossbar Name | Actionbar Message
execute if score #RunConfig config matches 4 run bossbar set spicyuhc:timebar name ["SpicyUHC - ",{"score":{"objective":"time","name":"Ore"}},":",{"score":{"objective":"time","name":"DecineMinuti"}},{"score":{"objective":"time","name":"Minuti"}},":",{"score":{"objective":"time","name":"DecineSecondi"}},{"score":{"objective":"time","name":"Secondi"}}]
execute if score #RunConfig config matches 4 run title @a[tag=t] actionbar [{"text":"","color":"green"},{"text":"SpicyUHC","bold":true}," - ",{"score":{"objective":"time","name":"Ore"}},":",{"score":{"objective":"time","name":"DecineMinuti"}},{"score":{"objective":"time","name":"Minuti"}},":",{"score":{"objective":"time","name":"DecineSecondi"}},{"score":{"objective":"time","name":"Secondi"}}]

# Rivela Team
scoreboard players set RivelaSquadre config 72000

# Persone che registrano
tag @a remove REC
tag Hemerald96 add REC
tag ErenBlaze add REC
tag TearlessRaptor add REC
tag Tech4Play add REC

scoreboard players set #RunConfig config 0
