# voxuhc:src/messages

# EpisodeTime
execute @e[tag=voxctr] ~ ~ ~ time query gametime
scoreboard players operation EpisodeTime voxtmr = @e[tag=voxctr] voxtmr
scoreboard players operation EpisodeTime voxtmr -= Iniziato voxtmr
scoreboard players operation EpisodeTime voxtmr %= #24000 voxtmr

# 20m Message
execute @e[tag=voxctr] ~ ~ ~ scoreboard players test EpisodeTime voxtmr 0 0
function voxuhc:src/20m_message if @e[tag=voxctr,score_SuccessCount_min=1]

# EpisodeNumber
execute @e[tag=voxctr] ~ ~ ~ time query gametime
scoreboard players operation EpisodeNumber voxtmr = @e[tag=voxctr] voxtmr
scoreboard players operation EpisodeNumber voxtmr -= Iniziato voxtmr
scoreboard players operation EpisodeNumber voxtmr /= #24000 voxtmr
scoreboard players add EpisodeNumber voxtmr 1
