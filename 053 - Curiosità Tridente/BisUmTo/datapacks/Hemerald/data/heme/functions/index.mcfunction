# heme:index
difficulty easy

execute as @e[type=armor_stand,tag=!0] at @s align y if entity @a[distance=..5] run data merge entity @s {CustomNameVisible:1}
execute as @e[type=armor_stand,tag=!0] at @s align y unless entity @a[distance=..6] run data merge entity @s {CustomNameVisible:0}

execute as @a[tag=CARPET] at @s unless block ~ ~ ~ #minecraft:carpets run tag @s remove CARPET

# PRIMO
execute as @a[tag=!CARPET] at @s if entity @e[distance=..1,tag=1] if block ~ ~ ~ #minecraft:carpets run tag @s add Riptide
execute as @a[tag=!CARPET] at @s if entity @e[distance=..1,tag=1] if block ~ ~ ~ #minecraft:carpets run weather rain
execute as @a[tag=!CARPET] at @s if entity @e[distance=..1,tag=1] if block ~ ~ ~ #minecraft:carpets run tag @s add CARPET

execute as @a[tag=Riptide,nbt=!{Inventory:[{id:"minecraft:trident",Slot:4b}]}] run replaceitem entity @s hotbar.4 minecraft:trident{ench:[{id:67,lvl:3}]}

execute as @a[tag=Riptide] at @s if entity @e[tag=2,distance=..2] run clear @s trident
execute as @a[tag=Riptide] at @s if entity @e[tag=2,distance=..2] run weather clear
execute as @a at @s if entity @e[tag=2,distance=..2] run tag @s remove Riptide

# SECONDO
execute as @a[tag=!CARPET] at @s if entity @e[distance=..1,tag=2] if block ~ ~ ~ #minecraft:carpets run tag @s add Tridente
execute as @a[tag=!CARPET] at @s if entity @e[distance=..1,tag=2] if block ~ ~ ~ #minecraft:carpets run tag @s add CARPET

execute as @a[tag=Tridente,nbt=!{Inventory:[{id:"minecraft:trident",Slot:4b}]}] run replaceitem entity @s hotbar.4 minecraft:trident

execute as @a[tag=Tridente] at @s if entity @e[tag=2,distance=6..7] run clear @s trident
execute as @a at @s if entity @e[tag=2,distance=6..7] run tag @s remove Tridente

# TERZO
execute as @a[tag=!CARPET] at @s if entity @e[distance=..1,tag=3] if block ~ ~ ~ #minecraft:carpets run tag @s add Channeling
execute as @a[tag=!CARPET] at @s if entity @e[distance=..1,tag=3] if block ~ ~ ~ #minecraft:carpets run weather thunder
execute as @a[tag=!CARPET] at @s if entity @e[distance=..1,tag=3] if block ~ ~ ~ #minecraft:carpets unless entity @e[tag=Villaggero] run summon minecraft:villager 460.41 64.00 141.34 {Profession:1,CustomName:"\"BisUmTo\"",NoAI:1,Rotation:[180f,0f],Tags:["Villaggero"],Silent:1,Offers:{Recipes:[]}}
execute as @a[tag=!CARPET] at @s if entity @e[distance=..1,tag=3] if block ~ ~ ~ #minecraft:carpets run tag @s add CARPET

execute as @a[tag=Channeling,nbt=!{Inventory:[{id:"minecraft:trident",Slot:4b}]}] run replaceitem entity @s hotbar.4 minecraft:trident{ench:[{id:68,lvl:1}]}
tag @e[type=witch] add Villaggero
execute as @e[type=witch] run data merge entity @s {NoAI:0}
execute as @e[tag=Villaggero] at @s run tp @s ~ ~ ~ facing entity @p

execute as @a[tag=Channeling] at @s if entity @e[tag=3,distance=6..7] run clear @s trident
execute as @a[tag=Channeling] at @s if entity @e[tag=3,distance=6..7] run tp @e[tag=Villaggero] ~ ~-400 ~
execute as @a[tag=Channeling] at @s if entity @e[tag=3,distance=6..7] run weather clear
execute as @a at @s if entity @e[tag=3,distance=6..7] run tag @s remove Channeling

# QUARTO
execute as @a[tag=!CARPET] at @s if entity @e[distance=..1,tag=4] if block ~ ~ ~ #minecraft:carpets run tag @s add Channeling4
execute as @a[tag=!CARPET] at @s if entity @e[distance=..1,tag=4] if block ~ ~ ~ #minecraft:carpets run weather thunder
execute as @a[tag=!CARPET] at @s if entity @e[distance=..1,tag=4] if block ~ ~ ~ #minecraft:carpets unless entity @e[tag=Criper] run summon minecraft:creeper 444.74 65.00 149.28 {NoAI:1,Rotation:[200f,0f],Tags:["Criper"],Silent:1}
execute as @a[tag=!CARPET] at @s if entity @e[distance=..1,tag=4] if block ~ ~ ~ #minecraft:carpets run tag @s add CARPET

execute as @a[tag=Channeling4,nbt=!{Inventory:[{id:"minecraft:trident",Slot:4b}]}] run replaceitem entity @s hotbar.4 minecraft:trident{ench:[{id:68,lvl:1}]}

execute as @a[tag=Channeling4] at @s if entity @e[tag=4,distance=6..7] run clear @s trident
execute as @a[tag=Channeling4] at @s if entity @e[tag=4,distance=6..7] run weather clear
execute as @a at @s if entity @e[tag=4,distance=6..7] run tag @s remove Channeling4

# QUINTO
execute as @a[tag=!CARPET] at @s if entity @e[distance=..1,tag=5] if block ~ ~ ~ #minecraft:carpets unless entity @e[tag=Criper] run summon minecraft:creeper 444.74 65.00 149.28 {powered:1,NoAI:1,Rotation:[200f,0f],Tags:["Criper"]}
execute as @a[tag=!CARPET] at @s if entity @e[distance=..1,tag=5] if block ~ ~ ~ #minecraft:carpets as @e[tag=Criper,nbt=!{powered:1}] run data merge entity @s {powered:1,NoAI:1,Rotation:[200f,0f],Tags:["Criper"]}
execute as @a[tag=!CARPET] at @s if entity @e[distance=..1,tag=5] if block ~ ~ ~ #minecraft:carpets unless entity @e[tag=Secco] run summon minecraft:skeleton 447.16 65.00 151.29 {NoAI:1,Silent:1,Tags:["Secco"],Rotation:[-1668.05f,3.60f]}
execute as @a[tag=!CARPET] at @s if entity @e[distance=..1,tag=5] if block ~ ~ ~ #minecraft:carpets run replaceitem entity @s hotbar.4 flint_and_steel
execute as @a[tag=!CARPET] at @s if entity @e[distance=..1,tag=5] if block ~ ~ ~ #minecraft:carpets run tag @s add CARPET

tag @e[type=creeper,nbt={powered:1}] add Criper
execute as @e[tag=Criper] at @s run tp @s ~ ~ ~ facing entity @p

execute as @a[nbt={Inventory:[{id:"minecraft:flint_and_steel"}]}] at @s if entity @e[tag=5,distance=7..9] run clear @s flint_and_steel

# SESTO
execute as @a[tag=!CARPET] at @s if entity @e[distance=..1,tag=6] if block ~ ~ ~ #minecraft:carpets run tag @s add Channeling6
execute as @a[tag=!CARPET] at @s if entity @e[distance=..1,tag=6] if block ~ ~ ~ #minecraft:carpets run weather thunder
execute as @a[tag=!CARPET] at @s if entity @e[distance=..1,tag=6] if block ~ ~ ~ #minecraft:carpets unless entity @e[tag=Maiale] run summon minecraft:pig 424.42 64.00 158.43 {CustomName:"\"GABBuso\"",NoAI:1,Rotation:[-2994.68f,3.30f],Tags:["Maiale"]}
execute as @a[tag=!CARPET] at @s if entity @e[distance=..1,tag=6] if block ~ ~ ~ #minecraft:carpets run tag @s add CARPET

execute as @a[tag=Channeling6,nbt=!{Inventory:[{id:"minecraft:trident",Slot:4b}]}] run replaceitem entity @s hotbar.4 minecraft:trident{ench:[{id:68,lvl:1}]}
tag @e[type=zombie_pigman] add Maiale
execute as @e[tag=Maiale] at @s run tp @s ~ ~ ~ facing entity @p

execute as @a[tag=Channeling6] at @s if entity @e[tag=6,distance=6..7] run clear @s trident
execute as @a[tag=Channeling6] at @s if entity @e[tag=6,distance=6..7] run tp @e[tag=Maiale] ~ ~-400 ~
execute as @a[tag=Channeling6] at @s if entity @e[tag=6,distance=6..7] run weather clear
execute as @a at @s if entity @e[tag=6,distance=6..7] run tag @s remove Channeling6

# SETTIMO
execute as @a[tag=!CARPET] at @s if entity @e[distance=..1,tag=7] if block ~ ~ ~ #minecraft:carpets run tag @s add Riptide7
execute as @a[tag=!CARPET] at @s if entity @e[distance=..1,tag=7] if block ~ ~ ~ #minecraft:carpets run tp @s 422.40 72.00 179.40 -3283.54 32.10
execute as @a[tag=!CARPET] at @s if entity @e[distance=..1,tag=7] if block ~ ~ ~ #minecraft:carpets run tag @s add CARPET

execute as @a[tag=Riptide7,nbt=!{Inventory:[{id:"minecraft:trident",Slot:4b}]}] run replaceitem entity @s hotbar.4 minecraft:trident{ench:[{id:67,lvl:3}]}
execute as @a[tag=Riptide7,nbt=!{Inventory:[{id:"minecraft:elytra",Slot:102b}]}] run replaceitem entity @s armor.chest elytra

execute as @a[tag=Riptide7] at @s if entity @e[tag=8,distance=..2] run clear @s trident
execute as @a[tag=Riptide7] at @s if entity @e[tag=8,distance=..2] run clear @s elytra

execute as @a at @s if entity @e[tag=8,distance=..2] run tag @s remove Riptide7

# OTTAVO
execute as @a[tag=!CARPET] at @s if entity @e[distance=..1,tag=8] if block ~ ~ ~ #minecraft:carpets unless entity @e[tag=Affogo] run summon drowned 415.70 69.00 175.65 {Rotation:[-942.48f,17.70f],HandItems:[{id:"minecraft:trident",Count:1b},{}],HandDropChances:[1.0F,0.085F],Silent:1,CustomName:"\"Droppo sempre un tridente\"",Tags:["Affogo"]}
execute as @a[tag=!CARPET] at @s if entity @e[distance=..1,tag=8] if block ~ ~ ~ #minecraft:carpets run tag @s add CARPET

# NONO
execute as @a[tag=!CARPET] at @s if entity @e[distance=..1,tag=9] if block ~ ~ ~ #minecraft:carpets unless entity @s[nbt={Inventory:[{id:"minecraft:trident",Slot:4b}]}] run replaceitem entity @s hotbar.4 minecraft:trident{ench:[{id:65,lvl:3}]}
execute as @a[tag=!CARPET] at @s if entity @e[distance=..1,tag=9] if block ~ ~ ~ #minecraft:carpets run kill @e[type=minecraft:trident]
execute as @a[tag=!CARPET] at @s if entity @e[distance=6..7,tag=9] if block ~ ~ ~ #minecraft:carpets run clear @s minecraft:trident{ench:[{id:65,lvl:3}]}
execute as @a[tag=!CARPET] at @s if entity @e[distance=..1,tag=9] if block ~ ~ ~ #minecraft:carpets run tag @s add CARPET

# DECIMO
execute as @a[tag=!CARPET,tag=!ChannelingD] at @s if entity @e[distance=..1,tag=10] if block ~ ~ ~ #minecraft:carpets run tellraw @a {"text":"<BisUmTo> Purtroppo la probabilità è bassa.\n<BisUmTo> Prova ad evocare tante tartarughe ed ucciderle con un fulmine.\n<BisUmTo> Circa 3 su 100 dropperanno una ciotola."}
execute as @a[tag=!CARPET] at @s if entity @e[distance=..1,tag=10] if block ~ ~ ~ #minecraft:carpets run tag @s add ChannelingD
execute as @a[tag=!CARPET] at @s if entity @e[distance=..1,tag=10] if block ~ ~ ~ #minecraft:carpets run weather thunder
execute as @a[tag=!CARPET] at @s if entity @e[distance=..1,tag=10] if block ~ ~ ~ #minecraft:carpets run replaceitem entity @s hotbar.0 turtle_spawn_egg 64
execute as @a[tag=!CARPET] at @s if entity @e[distance=..1,tag=410] if block ~ ~ ~ #minecraft:carpets run tag @s add CARPET

execute as @a[tag=ChannelingD,nbt=!{Inventory:[{id:"minecraft:trident",Slot:4b}]}] run replaceitem entity @s hotbar.4 minecraft:trident{ench:[{id:68,lvl:1}]}

execute as @a[tag=ChannelingD] at @s if entity @e[tag=0,distance=..4] run clear @s trident
execute as @a[tag=ChannelingD] at @s if entity @e[tag=0,distance=..4] run clear @s turtle_spawn_egg
execute as @a[tag=ChannelingD] at @s if entity @e[tag=0,distance=..4] run weather clear
execute as @a at @s if entity @e[tag=0,distance=..4] run tag @s remove ChannelingD
