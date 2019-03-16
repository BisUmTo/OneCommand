# voxuhc:start

execute @e[tag=voxctr] ~ ~ ~ time query gametime
scoreboard players operation Iniziato voxtmr = @e[tag=voxctr] voxtmr

scoreboard players tag @e[tag=voxctr] add voxigm
function voxuhc:src/spawn
