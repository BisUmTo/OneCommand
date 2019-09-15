# ind:src/random_shuffle_loop


#scoreboard randomIndex = random(0,count) (count non compreso)
scoreboard players set MIN indrng 1
scoreboard players operation MAX indrng = COUNT indrng
scoreboard players add MAX indrng 1
function ind:src/rng
#ora RESULT contine un numero casuale

#count--
scoreboard players remove COUNT indrng 1

#scambio 
#teletrasporto
    execute as @e[tag=indarm] if score @s indrng = RESULT indrng at @s run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["tpTemp"]}
    execute as @e[tag=indarm] if score @s indrng = COUNT indrng run tag @s add tpCount
    execute as @e[tag=indarm] if score @s indrng = RESULT indrng run tag @s add tpRandom
    tp @e[tag=tpRandom] @e[tag=tpCount,limit=1]
    tp @e[tag=tpCount] @e[tag=tpTemp,limit=1]
    kill @e[tag=tpTemp]
#scambio indice
    scoreboard players operation @e[tag=tpCount] indrng >< @e[tag=tpTemp] indrng
#rimuovo tag
tag @e remove tpCount
tag @e remove tpRandom
#se count > 0, rieseguo in maniera ricorsiva
execute if score COUNT indrng matches 1.. run function ind:src/random_shuffle_loop
