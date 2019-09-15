# ind:main

## RULES ##
execute if entity @e[tag=inding] run title @a[nbt={Inventory:[{id:"minecraft:red_wool"}]},nbt=!{Inventory:[{id:"minecraft:blue_wool"}]}] actionbar {"selector":"@e[tag=indros]","color":"dark_red","bold":true}
execute if entity @e[tag=inding] run title @a[nbt={Inventory:[{id:"minecraft:blue_wool"}]},nbt=!{Inventory:[{id:"minecraft:red_wool"}]}] actionbar {"selector":"@e[tag=indblu]","color":"blue","bold":true}
execute if entity @e[tag=inding] run title @a[nbt={Inventory:[{id:"minecraft:blue_wool"}]},nbt={Inventory:[{id:"minecraft:red_wool"}]}] actionbar ["",{"selector":"@e[tag=indblu]","color":"blue","bold":true}," | ",{"selector":"@e[tag=indros]","color":"dark_red","bold":true}]
execute if entity @e[tag=inding] run title @a[nbt={Inventory:[{id:"minecraft:red_wool"}]},nbt={Inventory:[{id:"minecraft:blue_wool"}]}] actionbar ["",{"selector":"@e[tag=indros]","color":"dark_red","bold":true}," | ",{"selector":"@e[tag=indblu]","color":"blue","bold":true}]

## LOOKING ##
execute at @e[tag=indctr] run tag @a[distance=..2] add indspwer
execute as @e[tag=indctr] at @s if entity @a[distance=..2] at @s positioned ^ ^-3 ^3 positioned ~-4 ~ ~-2 as @e[tag=indhemearm,dx=8,dy=3,dz=4] at @s facing entity @p[tag=indspwer] eyes run tp @s ~ ~ ~ ~ ~
tag @a remove indspwer

## HIDE ##
scoreboard players add @e[tag=indhemearm] indsto 0
execute as @e[tag=indhemearm] at @s if block ~ ~1 ~ minecraft:note_block[note=1] run tag @s add indtochange
tag @e[tag=indtochange,scores={indsto=1}] add indtoshow
tag @e[tag=indtochange,scores={indsto=0}] add indtohide

scoreboard players add @e[tag=indtochange] indsto 1
execute as @e[tag=indtohide] at @s run tp @s ~ ~-.54 ~
execute as @e[tag=indtohide] at @s run particle minecraft:dust 0 0 0 1.3 ~ ~2.2 ~ .2 .3 .2 1 10
execute as @e[tag=indtohide] at @s run playsound minecraft:entity.item_frame.remove_item master @a
execute as @e[tag=indtoshow] at @s run playsound minecraft:entity.item.pickup master @a
execute as @e[tag=indtoshow] at @s run tp @s ~ ~.54 ~

tag @e remove indtochange
tag @e remove indtoshow
tag @e remove indtohide
scoreboard players operation @e[tag=indhemearm] indsto %= #2 indrng
execute as @e[tag=indhemearm] at @s unless block ~ ~1 ~ minecraft:note_block[note=0] run setblock ~ ~1 ~ minecraft:note_block[note=0]

## NOHEAD ##
replaceitem entity @e[tag=indhemearm,nbt=!{ArmorItems:[{},{},{},{id:"minecraft:player_head"}]}] armor.head minecraft:player_head{SkullOwner:{Id:3e46b84b-ea5d-7a3b-a31c-46e2ca60a44d,Properties:{textures:[{Value:eyJ0aW1lc3RhbXAiOjE1NTQxNTQzODI2OTcsInByb2ZpbGVJZCI6IjBiOWNmMTY0NTBiNTQ5OTZiNzM0ZmRhMGU0ZmJjYzkyIiwicHJvZmlsZU5hbWUiOiJCaXNVbVRvIiwidGV4dHVyZXMiOnsiU0tJTiI6eyJ1cmwiOiJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzY1MDNhOTQ0ZmQ2NTNlNWUzOGY5YTk3ZTFmMmQ1YjUyYzdhYjJhYmNmZGYzMjZjZTNjZjE3NjUwM2U0ZTQ0MjYifX19}]}}} 1
