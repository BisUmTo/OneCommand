execute as @a[scores={REDdth=1..}] at @s run function red:grave/summon
execute at @e[tag=REDgr1] run teleport @e[tag=REDgri,distance=..4] ~ ~1.7 ~.2
execute as @a[scores={REDshi=1..}] at @s positioned ~ ~-1.5 ~ at @e[tag=REDgr1,distance=..3] as @e[tag=REDgri,distance=..3] run data merge entity @s {PickupDelay:0s,Age:0s}
execute as @a[scores={REDshi=1..}] at @s positioned ~ ~-1.5 ~ at @e[tag=REDgr1,distance=..3] run kill @e[tag=REDgrv,limit=4]
scoreboard players set @a REDdth 0
scoreboard players set @a REDshi 0
