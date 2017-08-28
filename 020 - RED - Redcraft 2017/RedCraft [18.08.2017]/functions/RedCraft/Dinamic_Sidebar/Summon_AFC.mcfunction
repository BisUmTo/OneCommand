scoreboard players add @e[tag=REDarm] REDscr 1
scoreboard players set @e[tag=REDarm,score_REDscr_min=3] REDscr 1

scoreboard players tag @e[tag=REDarm] add REDupd
execute @e[tag=REDarm] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Radius:0f,Duration:200,Tags:["REDafc"]}