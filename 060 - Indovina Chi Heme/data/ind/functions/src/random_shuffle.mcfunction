# ind:src/random_shuffle

#CODICE DA "CONVERTIRE"
#
#while (0 !== currentIndex) {
#    // Pick a remaining element...
#   randomIndex = Math.floor(Math.random() * currentIndex);
#   currentIndex -= 1;
#
#    // And swap it with the current element.
#    temporaryValue = array[currentIndex];
#    array[currentIndex] = array[randomIndex];
#    array[randomIndex] = temporaryValue;
#  }

#calcolo numero di "regole" -> numero armorstand
scoreboard players set COUNT indrng 0
#tutte le armorstand hanno tag indarm, la prima ha tag ptrstart
execute at @e[tag=ptrstart] as @e[tag=indarm] store result score @s indrng run scoreboard players add COUNT indrng 1
scoreboard players add COUNT indrng 1
#funzione ricorsiva
function ind:src/random_shuffle_loop
