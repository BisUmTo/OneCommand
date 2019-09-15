# ind:commands/spawn

tag @s[y_rotation=-90..90] add indspawnsouth
tag @s[y_rotation=90..180,tag=!indspawnsouth] add indspawnnorth
tag @s[y_rotation=-180..-90,tag=!indspawnsouth] add indspawnnorth

# SOUTH
execute at @s[tag=indspawnsouth] positioned ~ ~ ~1 run fill ~-4 ~-2 ~ ~4 ~ ~4 minecraft:note_block
execute at @s[tag=indspawnsouth] positioned ~ ~ ~1 run fill ~-1 ~-2 ~ ~1 ~1 ~1 minecraft:air
execute at @s[tag=indspawnsouth] positioned ~ ~ ~1 run fill ~-2 ~-1 ~ ~2 ~1 ~1 minecraft:air
execute at @s[tag=indspawnsouth] positioned ~ ~ ~1 run fill ~-1 ~-1 ~2 ~1 ~1 ~2 minecraft:air
execute at @s[tag=indspawnsouth] positioned ~ ~ ~1 run fill ~-3 ~ ~ ~3 ~1 ~1 minecraft:air
execute at @s[tag=indspawnsouth] positioned ~ ~ ~1 run fill ~-2 ~ ~2 ~2 ~1 ~2 minecraft:air
execute at @s[tag=indspawnsouth] positioned ~ ~ ~1 run fill ~-4 ~1 ~ ~4 ~2 ~4 minecraft:air
execute at @s[tag=indspawnsouth] positioned ~ ~ ~1 run fill ~-1 ~ ~3 ~1 ~1 ~3 minecraft:air
execute at @s[tag=indspawnsouth] positioned ~ ~ ~1 run fill ~-4 ~-2 ~2 ~-4 ~ ~4 minecraft:air
execute at @s[tag=indspawnsouth] positioned ~ ~ ~1 run fill ~-3 ~-2 ~3 ~-3 ~ ~4 minecraft:air
execute at @s[tag=indspawnsouth] positioned ~ ~ ~1 run fill ~-2 ~-2 ~4 ~-2 ~ ~4 minecraft:air
execute at @s[tag=indspawnsouth] positioned ~ ~ ~1 run fill ~4 ~-2 ~2 ~4 ~ ~4 minecraft:air
execute at @s[tag=indspawnsouth] positioned ~ ~ ~1 run fill ~3 ~-2 ~3 ~3 ~ ~4 minecraft:air
execute at @s[tag=indspawnsouth] positioned ~ ~ ~1 run fill ~2 ~-2 ~4 ~2 ~ ~4 minecraft:air
execute at @s[tag=indspawnsouth] positioned ~ ~ ~1 run fill ~-4 ~-2 ~ ~-4 ~-1 ~1 minecraft:spruce_wood
execute at @s[tag=indspawnsouth] positioned ~ ~ ~1 run fill ~-3 ~-2 ~2 ~-3 ~-1 ~2 minecraft:spruce_wood
execute at @s[tag=indspawnsouth] positioned ~ ~ ~1 run fill ~-2 ~-2 ~3 ~-2 ~-1 ~3 minecraft:spruce_wood
execute at @s[tag=indspawnsouth] positioned ~ ~ ~1 run setblock ~-3 ~-2 ~ minecraft:spruce_wood
execute at @s[tag=indspawnsouth] positioned ~ ~ ~1 run fill ~-1 ~-2 ~4 ~1 ~-1 ~4 minecraft:spruce_wood
execute at @s[tag=indspawnsouth] positioned ~ ~ ~1 run fill ~4 ~-2 ~ ~4 ~-1 ~1 minecraft:spruce_wood
execute at @s[tag=indspawnsouth] positioned ~ ~ ~1 run fill ~3 ~-2 ~2 ~3 ~-1 ~2 minecraft:spruce_wood
execute at @s[tag=indspawnsouth] positioned ~ ~ ~1 run fill ~2 ~-2 ~3 ~2 ~-1 ~3 minecraft:spruce_wood
execute at @s[tag=indspawnsouth] positioned ~ ~ ~1 run setblock ~3 ~-2 ~ minecraft:spruce_wood
execute at @s[tag=indspawnsouth] positioned ~ ~ ~1 align xyz run summon minecraft:armor_stand ~-1.5 ~-2.42 ~.5 {NoGravity:1,Invisible:1,Tags:["indhemearm"]}
execute at @s[tag=indspawnsouth] positioned ~ ~ ~1 align xyz run summon minecraft:armor_stand ~-1.5 ~-2.42 ~1.5 {NoGravity:1,Invisible:1,Tags:["indhemearm"]}
execute at @s[tag=indspawnsouth] positioned ~ ~ ~1 align xyz run summon minecraft:armor_stand ~-.5 ~-2.42 ~2.5 {NoGravity:1,Invisible:1,Tags:["indhemearm"]}
execute at @s[tag=indspawnsouth] positioned ~ ~ ~1 align xyz run summon minecraft:armor_stand ~.5 ~-2.42 ~2.5 {NoGravity:1,Invisible:1,Tags:["indhemearm"]}
execute at @s[tag=indspawnsouth] positioned ~ ~ ~1 align xyz run summon minecraft:armor_stand ~1.5 ~-2.42 ~2.5 {NoGravity:1,Invisible:1,Tags:["indhemearm"]}
execute at @s[tag=indspawnsouth] positioned ~ ~ ~1 align xyz run summon minecraft:armor_stand ~2.5 ~-2.42 ~1.5 {NoGravity:1,Invisible:1,Tags:["indhemearm"]}
execute at @s[tag=indspawnsouth] positioned ~ ~ ~1 align xyz run summon minecraft:armor_stand ~2.5 ~-2.42 ~.5 {NoGravity:1,Invisible:1,Tags:["indhemearm"]}
execute at @s[tag=indspawnsouth] positioned ~ ~ ~1 align xyz run summon minecraft:armor_stand ~-2.5 ~-1.42 ~.5 {NoGravity:1,Invisible:1,Tags:["indhemearm"]}
execute at @s[tag=indspawnsouth] positioned ~ ~ ~1 align xyz run summon minecraft:armor_stand ~-2.5 ~-1.42 ~1.5 {NoGravity:1,Invisible:1,Tags:["indhemearm"],DisabledSlots:917504}
execute at @s[tag=indspawnsouth] positioned ~ ~ ~1 align xyz run summon minecraft:armor_stand ~-1.5 ~-1.42 ~2.5 {NoGravity:1,Invisible:1,Tags:["indhemearm"],DisabledSlots:917504}
execute at @s[tag=indspawnsouth] positioned ~ ~ ~1 align xyz run summon minecraft:armor_stand ~-.5 ~-1.42 ~3.5 {NoGravity:1,Invisible:1,Tags:["indhemearm"],DisabledSlots:917504}
execute at @s[tag=indspawnsouth] positioned ~ ~ ~1 align xyz run summon minecraft:armor_stand ~.5 ~-1.42 ~3.5 {NoGravity:1,Invisible:1,Tags:["indhemearm"],DisabledSlots:917504}
execute at @s[tag=indspawnsouth] positioned ~ ~ ~1 align xyz run summon minecraft:armor_stand ~1.5 ~-1.42 ~3.5 {NoGravity:1,Invisible:1,Tags:["indhemearm"],DisabledSlots:917504}
execute at @s[tag=indspawnsouth] positioned ~ ~ ~1 align xyz run summon minecraft:armor_stand ~2.5 ~-1.42 ~2.5 {NoGravity:1,Invisible:1,Tags:["indhemearm"],DisabledSlots:917504}
execute at @s[tag=indspawnsouth] positioned ~ ~ ~1 align xyz run summon minecraft:armor_stand ~3.5 ~-1.42 ~1.5 {NoGravity:1,Invisible:1,Tags:["indhemearm"],DisabledSlots:917504}
execute at @s[tag=indspawnsouth] positioned ~ ~ ~1 align xyz run summon minecraft:armor_stand ~3.5 ~-1.42 ~.5 {NoGravity:1,Invisible:1,Tags:["indhemearm"],DisabledSlots:917504}
execute at @s[tag=indspawnsouth] positioned ~ ~ ~1 align xyz run summon minecraft:armor_stand ~4.5 ~-.42 ~.5 {NoGravity:1,Invisible:1,Tags:["indhemearm"],DisabledSlots:917504}
execute at @s[tag=indspawnsouth] positioned ~ ~ ~1 align xyz run summon minecraft:armor_stand ~4.5 ~-.42 ~1.5 {NoGravity:1,Invisible:1,Tags:["indhemearm"],DisabledSlots:917504}
execute at @s[tag=indspawnsouth] positioned ~ ~ ~1 align xyz run summon minecraft:armor_stand ~3.5 ~-.42 ~2.5 {NoGravity:1,Invisible:1,Tags:["indhemearm"],DisabledSlots:917504}
execute at @s[tag=indspawnsouth] positioned ~ ~ ~1 align xyz run summon minecraft:armor_stand ~2.5 ~-.42 ~3.5 {NoGravity:1,Invisible:1,Tags:["indhemearm"],DisabledSlots:917504}
execute at @s[tag=indspawnsouth] positioned ~ ~ ~1 align xyz run summon minecraft:armor_stand ~1.5 ~-.42 ~4.5 {NoGravity:1,Invisible:1,Tags:["indhemearm"],DisabledSlots:917504}
execute at @s[tag=indspawnsouth] positioned ~ ~ ~1 align xyz run summon minecraft:armor_stand ~.5 ~-.42 ~4.5 {NoGravity:1,Invisible:1,Tags:["indhemearm"],DisabledSlots:917504}
execute at @s[tag=indspawnsouth] positioned ~ ~ ~1 align xyz run summon minecraft:armor_stand ~-.5 ~-.42 ~4.5 {NoGravity:1,Invisible:1,Tags:["indhemearm"],DisabledSlots:917504}
execute at @s[tag=indspawnsouth] positioned ~ ~ ~1 align xyz run summon minecraft:armor_stand ~-1.5 ~-.42 ~3.5 {NoGravity:1,Invisible:1,Tags:["indhemearm"],DisabledSlots:917504}
execute at @s[tag=indspawnsouth] positioned ~ ~ ~1 align xyz run summon minecraft:armor_stand ~-2.5 ~-.42 ~2.5 {NoGravity:1,Invisible:1,Tags:["indhemearm"],DisabledSlots:917504}
execute at @s[tag=indspawnsouth] positioned ~ ~ ~1 align xyz run summon minecraft:armor_stand ~-3.5 ~-.42 ~1.5 {NoGravity:1,Invisible:1,Tags:["indhemearm"],DisabledSlots:917504}
execute at @s[tag=indspawnsouth] positioned ~ ~ ~1 align xyz run summon minecraft:armor_stand ~-3.5 ~-.42 ~.5 {NoGravity:1,Invisible:1,Tags:["indhemearm"],DisabledSlots:917504}

# NORTH
execute at @s[tag=indspawnnorth] positioned ~ ~ ~-1 run fill ~-4 ~-2 ~ ~4 ~ ~-4 minecraft:note_block
execute at @s[tag=indspawnnorth] positioned ~ ~ ~-1 run fill ~-1 ~-2 ~ ~1 ~1 ~-1 minecraft:air
execute at @s[tag=indspawnnorth] positioned ~ ~ ~-1 run fill ~-2 ~-1 ~ ~2 ~1 ~-1 minecraft:air
execute at @s[tag=indspawnnorth] positioned ~ ~ ~-1 run fill ~-1 ~-1 ~-2 ~1 ~1 ~-2 minecraft:air
execute at @s[tag=indspawnnorth] positioned ~ ~ ~-1 run fill ~-3 ~ ~ ~3 ~1 ~-1 minecraft:air
execute at @s[tag=indspawnnorth] positioned ~ ~ ~-1 run fill ~-2 ~ ~-2 ~2 ~1 ~-2 minecraft:air
execute at @s[tag=indspawnnorth] positioned ~ ~ ~-1 run fill ~-4 ~1 ~ ~4 ~2 ~-4 minecraft:air
execute at @s[tag=indspawnnorth] positioned ~ ~ ~-1 run fill ~-1 ~ ~-3 ~1 ~1 ~-3 minecraft:air
execute at @s[tag=indspawnnorth] positioned ~ ~ ~-1 run fill ~-4 ~-2 ~-2 ~-4 ~ ~-4 minecraft:air
execute at @s[tag=indspawnnorth] positioned ~ ~ ~-1 run fill ~-3 ~-2 ~-3 ~-3 ~ ~-4 minecraft:air
execute at @s[tag=indspawnnorth] positioned ~ ~ ~-1 run fill ~-2 ~-2 ~-4 ~-2 ~ ~-4 minecraft:air
execute at @s[tag=indspawnnorth] positioned ~ ~ ~-1 run fill ~4 ~-2 ~-2 ~4 ~ ~-4 minecraft:air
execute at @s[tag=indspawnnorth] positioned ~ ~ ~-1 run fill ~3 ~-2 ~-3 ~3 ~ ~-4 minecraft:air
execute at @s[tag=indspawnnorth] positioned ~ ~ ~-1 run fill ~2 ~-2 ~-4 ~2 ~ ~-4 minecraft:air
execute at @s[tag=indspawnnorth] positioned ~ ~ ~-1 run fill ~-4 ~-2 ~ ~-4 ~-1 ~-1 minecraft:spruce_wood
execute at @s[tag=indspawnnorth] positioned ~ ~ ~-1 run fill ~-3 ~-2 ~-2 ~-3 ~-1 ~-2 minecraft:spruce_wood
execute at @s[tag=indspawnnorth] positioned ~ ~ ~-1 run fill ~-2 ~-2 ~-3 ~-2 ~-1 ~-3 minecraft:spruce_wood
execute at @s[tag=indspawnnorth] positioned ~ ~ ~-1 run setblock ~-3 ~-2 ~ minecraft:spruce_wood
execute at @s[tag=indspawnnorth] positioned ~ ~ ~-1 run fill ~-1 ~-2 ~-4 ~1 ~-1 ~-4 minecraft:spruce_wood
execute at @s[tag=indspawnnorth] positioned ~ ~ ~-1 run fill ~4 ~-2 ~ ~4 ~-1 ~-1 minecraft:spruce_wood
execute at @s[tag=indspawnnorth] positioned ~ ~ ~-1 run fill ~3 ~-2 ~-2 ~3 ~-1 ~-2 minecraft:spruce_wood
execute at @s[tag=indspawnnorth] positioned ~ ~ ~-1 run fill ~2 ~-2 ~-3 ~2 ~-1 ~-3 minecraft:spruce_wood
execute at @s[tag=indspawnnorth] positioned ~ ~ ~-1 run setblock ~3 ~-2 ~ minecraft:spruce_wood
execute at @s[tag=indspawnnorth] positioned ~ ~ ~-1 align xyz run summon minecraft:armor_stand ~-1.5 ~-2.42 ~.5 {NoGravity:1,Invisible:1,Tags:["indhemearm"]}
execute at @s[tag=indspawnnorth] positioned ~ ~ ~-1 align xyz run summon minecraft:armor_stand ~-1.5 ~-2.42 ~-.5 {NoGravity:1,Invisible:1,Tags:["indhemearm"]}
execute at @s[tag=indspawnnorth] positioned ~ ~ ~-1 align xyz run summon minecraft:armor_stand ~-.5 ~-2.42 ~-1.5 {NoGravity:1,Invisible:1,Tags:["indhemearm"]}
execute at @s[tag=indspawnnorth] positioned ~ ~ ~-1 align xyz run summon minecraft:armor_stand ~.5 ~-2.42 ~-1.5 {NoGravity:1,Invisible:1,Tags:["indhemearm"]}
execute at @s[tag=indspawnnorth] positioned ~ ~ ~-1 align xyz run summon minecraft:armor_stand ~1.5 ~-2.42 ~-1.5 {NoGravity:1,Invisible:1,Tags:["indhemearm"]}
execute at @s[tag=indspawnnorth] positioned ~ ~ ~-1 align xyz run summon minecraft:armor_stand ~2.5 ~-2.42 ~-.5 {NoGravity:1,Invisible:1,Tags:["indhemearm"]}
execute at @s[tag=indspawnnorth] positioned ~ ~ ~-1 align xyz run summon minecraft:armor_stand ~2.5 ~-2.42 ~.5 {NoGravity:1,Invisible:1,Tags:["indhemearm"]}
execute at @s[tag=indspawnnorth] positioned ~ ~ ~-1 align xyz run summon minecraft:armor_stand ~-2.5 ~-1.42 ~.5 {NoGravity:1,Invisible:1,Tags:["indhemearm"]}
execute at @s[tag=indspawnnorth] positioned ~ ~ ~-1 align xyz run summon minecraft:armor_stand ~-2.5 ~-1.42 ~-.5 {NoGravity:1,Invisible:1,Tags:["indhemearm"],DisabledSlots:917504}
execute at @s[tag=indspawnnorth] positioned ~ ~ ~-1 align xyz run summon minecraft:armor_stand ~-1.5 ~-1.42 ~-1.5 {NoGravity:1,Invisible:1,Tags:["indhemearm"],DisabledSlots:917504}
execute at @s[tag=indspawnnorth] positioned ~ ~ ~-1 align xyz run summon minecraft:armor_stand ~-.5 ~-1.42 ~-2.5 {NoGravity:1,Invisible:1,Tags:["indhemearm"],DisabledSlots:917504}
execute at @s[tag=indspawnnorth] positioned ~ ~ ~-1 align xyz run summon minecraft:armor_stand ~.5 ~-1.42 ~-2.5 {NoGravity:1,Invisible:1,Tags:["indhemearm"],DisabledSlots:917504}
execute at @s[tag=indspawnnorth] positioned ~ ~ ~-1 align xyz run summon minecraft:armor_stand ~1.5 ~-1.42 ~-2.5 {NoGravity:1,Invisible:1,Tags:["indhemearm"],DisabledSlots:917504}
execute at @s[tag=indspawnnorth] positioned ~ ~ ~-1 align xyz run summon minecraft:armor_stand ~2.5 ~-1.42 ~-1.5 {NoGravity:1,Invisible:1,Tags:["indhemearm"],DisabledSlots:917504}
execute at @s[tag=indspawnnorth] positioned ~ ~ ~-1 align xyz run summon minecraft:armor_stand ~3.5 ~-1.42 ~-.5 {NoGravity:1,Invisible:1,Tags:["indhemearm"],DisabledSlots:917504}
execute at @s[tag=indspawnnorth] positioned ~ ~ ~-1 align xyz run summon minecraft:armor_stand ~3.5 ~-1.42 ~.5 {NoGravity:1,Invisible:1,Tags:["indhemearm"],DisabledSlots:917504}
execute at @s[tag=indspawnnorth] positioned ~ ~ ~-1 align xyz run summon minecraft:armor_stand ~4.5 ~-.42 ~.5 {NoGravity:1,Invisible:1,Tags:["indhemearm"],DisabledSlots:917504}
execute at @s[tag=indspawnnorth] positioned ~ ~ ~-1 align xyz run summon minecraft:armor_stand ~4.5 ~-.42 ~-.5 {NoGravity:1,Invisible:1,Tags:["indhemearm"],DisabledSlots:917504}
execute at @s[tag=indspawnnorth] positioned ~ ~ ~-1 align xyz run summon minecraft:armor_stand ~3.5 ~-.42 ~-1.5 {NoGravity:1,Invisible:1,Tags:["indhemearm"],DisabledSlots:917504}
execute at @s[tag=indspawnnorth] positioned ~ ~ ~-1 align xyz run summon minecraft:armor_stand ~2.5 ~-.42 ~-2.5 {NoGravity:1,Invisible:1,Tags:["indhemearm"],DisabledSlots:917504}
execute at @s[tag=indspawnnorth] positioned ~ ~ ~-1 align xyz run summon minecraft:armor_stand ~1.5 ~-.42 ~-3.5 {NoGravity:1,Invisible:1,Tags:["indhemearm"],DisabledSlots:917504}
execute at @s[tag=indspawnnorth] positioned ~ ~ ~-1 align xyz run summon minecraft:armor_stand ~.5 ~-.42 ~-3.5 {NoGravity:1,Invisible:1,Tags:["indhemearm"],DisabledSlots:917504}
execute at @s[tag=indspawnnorth] positioned ~ ~ ~-1 align xyz run summon minecraft:armor_stand ~-.5 ~-.42 ~-3.5 {NoGravity:1,Invisible:1,Tags:["indhemearm"],DisabledSlots:917504}
execute at @s[tag=indspawnnorth] positioned ~ ~ ~-1 align xyz run summon minecraft:armor_stand ~-1.5 ~-.42 ~-2.5 {NoGravity:1,Invisible:1,Tags:["indhemearm"],DisabledSlots:917504}
execute at @s[tag=indspawnnorth] positioned ~ ~ ~-1 align xyz run summon minecraft:armor_stand ~-2.5 ~-.42 ~-1.5 {NoGravity:1,Invisible:1,Tags:["indhemearm"],DisabledSlots:917504}
execute at @s[tag=indspawnnorth] positioned ~ ~ ~-1 align xyz run summon minecraft:armor_stand ~-3.5 ~-.42 ~-.5 {NoGravity:1,Invisible:1,Tags:["indhemearm"],DisabledSlots:917504}
execute at @s[tag=indspawnnorth] positioned ~ ~ ~-1 align xyz run summon minecraft:armor_stand ~-3.5 ~-.42 ~.5 {NoGravity:1,Invisible:1,Tags:["indhemearm"],DisabledSlots:917504} 

setblock ~ ~-1 ~ minecraft:dark_oak_fence
setblock ~ ~ ~ minecraft:dark_oak_slab
execute at @s[tag=indspawnnorth] run execute align xyz run summon minecraft:armor_stand ~.5 ~.5 ~.5 {NoGravity:1,Invisible:1,Tags:["indctr"],Marker:1,Rotation:[180.0f,0.0f]}
execute at @s[tag=indspawnsouth] run execute align xyz run summon minecraft:armor_stand ~.5 ~.5 ~.5 {NoGravity:1,Invisible:1,Tags:["indctr"],Marker:1,Rotation:[0.0f,0.0f]}
execute align xyz run tp @s ~.5 ~.5 ~.5

tag @a remove indspawnnorth
tag @a remove indspawnsouth

tag @s add indspwer
tag @e[tag=indhemearm,nbt=!{ArmorItems:[{},{},{},{id:"minecraft:player_head"}]}] add indjstspw
replaceitem entity @e[tag=indjstspw] armor.head minecraft:player_head{SkullOwner:{Id:3e46b84b-ea5d-7a3b-a31c-46e2ca60a44d,Properties:{textures:[{Value:eyJ0aW1lc3RhbXAiOjE1NTQxNTQzODI2OTcsInByb2ZpbGVJZCI6IjBiOWNmMTY0NTBiNTQ5OTZiNzM0ZmRhMGU0ZmJjYzkyIiwicHJvZmlsZU5hbWUiOiJCaXNVbVRvIiwidGV4dHVyZXMiOnsiU0tJTiI6eyJ1cmwiOiJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzY1MDNhOTQ0ZmQ2NTNlNWUzOGY5YTk3ZTFmMmQ1YjUyYzdhYjJhYmNmZGYzMjZjZTNjZjE3NjUwM2U0ZTQ0MjYifX19}]}}} 1
execute at @e[tag=indjstspw] run setblock ~ ~2 ~ minecraft:moving_piston
tag @s remove indspwer
tag @e remove indjstspw
