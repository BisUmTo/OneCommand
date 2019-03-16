# voxuhc:main

# Death
execute @a[score_voxdth_min=1] ~ ~ ~ function voxuhc:src/death_actions
execute @a[score_voxres_min=1,score_voxres=1] ~ ~ ~ function voxuhc:src/respawn

# Golden Head
scoreboard players tag @e[type=item] add voxskl {Item:{id:"minecraft:skull",Count:1b,Damage:3s,tag:{display:{Name:"§6§lVox Aurea",Lore:["§r§7§oDroppala per ottenere i suoi benefici."]},SkullOwner:{Id:"fd171629-3bf3-4c0f-82dc-567970aedf02",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGFkMDQ3NmU4NjcxNjk2YWYzYTg5NDlhZmEyYTgxNGI5YmRkZTY1ZWNjZDFhOGI1OTNhZWVmZjVhMDMxOGQifX19"}]}}}}}
execute @a[score_voxdrp_min=1] ~ ~ ~ execute @e[tag=voxskl,r=2,c=1] ~ ~ ~ execute @p[score_voxdrp_min=1] ~ ~ ~ function voxuhc:src/golden_head_actions
execute @a[score_voxdrp_min=1] ~ ~ ~ execute @e[tag=voxskl,r=2,c=1] ~ ~ ~ kill @s
scoreboard players reset @a voxdrp

# Timers
execute @e[tag=voxigm] ~ ~ ~ function voxuhc:src/timer
execute @e[tag=voxigm] ~ ~ ~ function voxuhc:src/messages
execute @e[tag=voxigm] ~ ~ ~ function voxuhc:src/border
