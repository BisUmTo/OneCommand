# minecraft:index
gamerule doTileDrops false

execute at @e[nbt={Item:{id:"minecraft:cookie"}}] run fill ~-2 ~-4 ~-4 ~2 ~7 ~4 minecraft:air
execute at @e[nbt={Item:{id:"minecraft:cookie"}}] run fill ~-1 ~-1 ~-4 ~1 ~-1 ~4 minecraft:red_concrete
execute at @e[nbt={Item:{id:"minecraft:cookie"}}] run fill ~-2 ~-1 ~-3 ~2 ~-1 ~3 minecraft:red_concrete
execute at @e[nbt={Item:{id:"minecraft:cookie"}}] run fill ~-2 ~-4 ~ ~2 ~-1 ~ minecraft:black_concrete
execute at @e[nbt={Item:{id:"minecraft:cookie"}}] run fill ~-2 ~-1 ~ ~2 ~-1 ~4 minecraft:blue_concrete replace minecraft:red_concrete

