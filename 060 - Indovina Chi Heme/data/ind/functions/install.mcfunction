# ind:install

gamerule doTileDrops false

# Rules Example
execute unless entity @e[tag=ptrstart] run summon armor_stand ~ ~ ~1 {NoGravity:1,Invulnerable:1,CustomNameVisible:1,Tags:["indarm"],CustomName:"1"}
execute unless entity @e[tag=ptrstart] run summon armor_stand ~ ~ ~2 {NoGravity:1,Invulnerable:1,CustomNameVisible:1,Tags:["indarm"],CustomName:"2"}
execute unless entity @e[tag=ptrstart] run summon armor_stand ~ ~ ~3 {NoGravity:1,Invulnerable:1,CustomNameVisible:1,Tags:["indarm"],CustomName:"3"}
execute unless entity @e[tag=ptrstart] run summon armor_stand ~ ~ ~4 {NoGravity:1,Invulnerable:1,CustomNameVisible:1,Tags:["indarm"],CustomName:"4"}
execute unless entity @e[tag=ptrstart] run summon armor_stand ~ ~ ~5 {NoGravity:1,Invulnerable:1,CustomNameVisible:1,Tags:["indarm"],CustomName:"5"}
execute unless entity @e[tag=ptrstart] run summon armor_stand ~ ~ ~6 {NoGravity:1,Invulnerable:1,CustomNameVisible:1,Tags:["indarm"],CustomName:"6"}
execute unless entity @e[tag=ptrstart] run summon armor_stand ~ ~ ~7 {NoGravity:1,Invulnerable:1,CustomNameVisible:1,Tags:["indarm"],CustomName:"7"}
execute unless entity @e[tag=ptrstart] run summon armor_stand ~ ~ ~8 {NoGravity:1,Invulnerable:1,CustomNameVisible:1,Tags:["indarm"],CustomName:"8"}
execute unless entity @e[tag=ptrstart] run summon armor_stand ~ ~ ~ {NoGravity:1,Invisible:1,Marker:1,Tags:["ptrstart"]}

# Randomizer
scoreboard objectives add indrng dummy
scoreboard players set #2 indrng 2

# Hide
scoreboard objectives add indsto dummy
