# voxuhc:src/timer

execute @e[tag=voxctr] ~ ~ ~ time query gametime
scoreboard players operation TempoGiocato voxtmr = @e[tag=voxctr] voxtmr
scoreboard players operation TempoGiocato voxtmr -= Iniziato voxtmr

scoreboard players operation #Ore voxtmr = TempoGiocato voxtmr
scoreboard players operation #Ore voxtmr /= #72000 voxtmr

scoreboard players operation #Minuti voxtmr = TempoGiocato voxtmr
scoreboard players operation #Minuti voxtmr %= #72000 voxtmr
scoreboard players operation #Minuti voxtmr /= #1200 voxtmr

scoreboard players operation #Secondi voxtmr = TempoGiocato voxtmr
scoreboard players operation #Secondi voxtmr %= #1200 voxtmr
scoreboard players operation #Secondi voxtmr /= #20 voxtmr

scoreboard players operation #DecineMinuti voxtmr = #Minuti voxtmr
scoreboard players operation #DecineMinuti voxtmr /= #10 voxtmr
scoreboard players operation #Minuti voxtmr %= #10 voxtmr

scoreboard players operation #DecineSecondi voxtmr = #Secondi voxtmr
scoreboard players operation #DecineSecondi voxtmr /= #10 voxtmr
scoreboard players operation #Secondi voxtmr %= #10 voxtmr

# title @a actionbar ["Ep. ",{"score":{"objective":"voxtmr","name":"EpisodeNumber"}},{"text":" | "},{"text":"Vox UHC","bold":true},{"text":" | "},{"score":{"objective":"voxtmr","name":"#Ore"}},":",{"score":{"objective":"voxtmr","name":"#DecineMinuti"}},{"score":{"objective":"voxtmr","name":"#Minuti"}},":",{"score":{"objective":"voxtmr","name":"#DecineSecondi"}},{"score":{"objective":"voxtmr","name":"#Secondi"}}]
title @a actionbar ["",{"text":"Vox UHC","bold":true},{"text":" | "},{"score":{"objective":"voxtmr","name":"#Ore"}},":",{"score":{"objective":"voxtmr","name":"#DecineMinuti"}},{"score":{"objective":"voxtmr","name":"#Minuti"}},":",{"score":{"objective":"voxtmr","name":"#DecineSecondi"}},{"score":{"objective":"voxtmr","name":"#Secondi"}}]
