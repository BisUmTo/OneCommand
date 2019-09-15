# rand
# numero random da 0 a N-1 | N è il numero di oggetti nell'inventario
execute store result score MAX rng run data get entity @s Inventory

summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["Rand"]}
execute store result score RESULT rng run data get entity @e[tag=Rand,limit=1] UUIDMost 0.00000000023283064365386962890625
scoreboard players operation MAX rng -= MIN rng
scoreboard players operation RESULT rng %= MAX rng
scoreboard players operation RESULT rng += MIN rng
scoreboard players operation MAX rng += MIN rng
kill @e[tag=Rand]

function minecraft:generated
playsound minecraft:ui.cartography_table.take_result master @s ~ ~ ~ 1 2 1
