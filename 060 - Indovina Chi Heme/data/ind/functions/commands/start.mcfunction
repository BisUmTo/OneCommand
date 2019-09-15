# ind:commands/start

function ind:commands/reset
tag @e[tag=ptrstart] add inding

# Regole per la squadra rossa
function ind:src/random_shuffle
tag @e[tag=indarm,sort=nearest,limit=3] add indros

# Regole per la squadra blu
function ind:src/random_shuffle
tag @e[tag=indarm,sort=nearest,limit=3] add indblu

playsound minecraft:entity.illusioner.prepare_mirror master @a ~ ~ ~ 1 2 1
