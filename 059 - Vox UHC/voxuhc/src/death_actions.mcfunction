# voxuhc:src/death_actions

scoreboard players tag @s add death

# Ep. 3..
execute @e[tag=voxctr] ~ ~ ~ scoreboard players test EpisodeNumber voxtmr 3
function voxuhc:src/death_actions_drop if @e[tag=voxctr,score_SuccessCount_min=1]

scoreboard players set @s voxdth 0
