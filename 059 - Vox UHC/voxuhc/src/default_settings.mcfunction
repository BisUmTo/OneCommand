# voxuhc:src/start_settings

execute @a[score_028trg_min=1,tag=!028stm] ~ ~ ~ time set 0
spawnpoint @a ~ ~ ~

# WorldBorder Dimension
execute @a[score_028trg_min=1,tag=!028stm] ~ ~ ~ worldborder set 2000

# WorldBorder Countdown
execute @e[tag=028ctr] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Radius:0,Tags:["028wbr"],Duration:96000}
