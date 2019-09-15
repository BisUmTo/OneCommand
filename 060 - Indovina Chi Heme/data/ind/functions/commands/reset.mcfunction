# ind:commands/reset

tag @e remove indros
tag @e remove indblu
tag @e remove inding

execute as @e[tag=indhemearm,scores={indsto=1}] at @s run setblock ~ ~1 ~ minecraft:note_block[note=1]
