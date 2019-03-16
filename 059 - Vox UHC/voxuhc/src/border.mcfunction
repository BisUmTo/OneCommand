# voxuhc:src/border

# Border
execute @e[tag=voxctr] ~ ~ ~ time query gametime
scoreboard players operation BorderTime voxtmr = @e[tag=voxctr] voxtmr
scoreboard players operation BorderTime voxtmr -= Iniziato voxtmr
execute @e[tag=voxctr] ~ ~ ~ scoreboard players test BorderTime voxtmr 96000 96000
function voxuhc:src/border_close if @e[tag=voxctr,score_SuccessCount_min=1]
