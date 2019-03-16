# voxuhc:src/respawn

# Ep. 1-2
execute @e[tag=voxctr] ~ ~ ~ scoreboard players test EpisodeNumber voxtmr 1 2
function voxuhc:src/death_actions_respawn if @e[tag=voxctr,score_SuccessCount_min=1]

scoreboard players tag @s remove death
