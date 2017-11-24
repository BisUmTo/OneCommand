scoreboard players add @e[tag=033lvl,tag=!033slc] 033lvl 1
tag @e[tag=033lvl,tag=!033slc,limit=1] add 033slc

execute if entity @e[tag=033lvl,tag=!033slc] run function dtd:loop
