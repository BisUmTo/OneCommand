# minecraft:index
gamerule doTileDrops false
scoreboard objectives add 052ILY dummy

execute at @e[nbt={Item:{id:"minecraft:cookie"}}] run fill ~-2 ~ ~-5 ~2 ~2 ~5 minecraft:air
execute at @e[nbt={Item:{id:"minecraft:cookie"}}] run fill ~-2 ~-4 ~-4 ~2 ~-2 ~ minecraft:air
execute at @e[nbt={Item:{id:"minecraft:cookie"}}] run fill ~-1 ~-1 ~-5 ~1 ~-1 ~5 minecraft:red_concrete
execute at @e[nbt={Item:{id:"minecraft:cookie"}}] run fill ~-2 ~-1 ~-4 ~2 ~-1 ~4 minecraft:red_concrete
execute at @e[nbt={Item:{id:"minecraft:cookie"}}] run fill ~-2 ~-4 ~ ~2 ~-1 ~ minecraft:black_concrete
execute at @e[nbt={Item:{id:"minecraft:cookie"}}] run fill ~-2 ~-1 ~ ~2 ~-1 ~5 minecraft:blue_concrete replace minecraft:red_concrete
execute at @e[nbt={Item:{id:"minecraft:cookie"}}] run setblock ~ ~-5 ~-1 minecraft:glowstone
execute at @e[nbt={Item:{id:"minecraft:cookie"}}] run setblock ~-2 ~-3 ~-1 minecraft:wall_sign[facing=north]{Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set @e[tag=052ctr,limit=1,sort=nearest] 052ILY 1\"}}",Text2:"[\"\",{\"text\":\"~\",\"obfuscated\":true,\"color\":\"white\"},{\"text\":\" Guess Who \",\"color\":\"dark_red\",\"bold\":true},{\"text\":\"~\",\"obfuscated\":true,\"color\":\"white\"}]",Text3:"{\"text\":\"RE-START\",\"bold\":true,\"color\":\"dark_green\"}"}
execute at @e[nbt={Item:{id:"minecraft:cookie"}}] run setblock ~2 ~-3 ~-1 minecraft:wall_sign[facing=north]{Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set @e[tag=052ctr,limit=1,sort=nearest] 052ILY 2\"}}",Text2:"[\"\",{\"text\":\"~\",\"obfuscated\":true,\"color\":\"white\"},{\"text\":\" \",\"color\":\"dark_red\"},{\"text\":\"Guess Who\",\"bold\":true,\"color\":\"dark_red\"},{\"text\":\" \",\"color\":\"dark_red\"},{\"text\":\"~\",\"obfuscated\":true,\"color\":\"white\"}]",Text3:"{\"text\":\"by BisUmTo\",\"color\":\"dark_green\",\"bold\":true}"}
execute at @e[nbt={Item:{id:"minecraft:cookie"}}] align xyz run summon minecraft:armor_stand ~.5 ~ ~.5 {NoGravity:1,Tags:["052ctr"]}

execute at @e[nbt={Item:{id:"minecraft:cookie"}}] align xyz run summon minecraft:armor_stand ~-.4 ~-4 ~-.2 {NoGravity:1,Tags:["052a16"],DisabledSlots:986895,Rotation:[180f,0f],Small:1}
execute at @e[nbt={Item:{id:"minecraft:cookie"}}] align xyz run summon minecraft:armor_stand ~.2 ~-4 ~-.2 {NoGravity:1,Tags:["052a15"],DisabledSlots:986895,Rotation:[180f,0f],Small:1}
execute at @e[nbt={Item:{id:"minecraft:cookie"}}] align xyz run summon minecraft:armor_stand ~.8 ~-4 ~-.2 {NoGravity:1,Tags:["052a14"],DisabledSlots:986895,Rotation:[180f,0f],Small:1}
execute at @e[nbt={Item:{id:"minecraft:cookie"}}] align xyz run summon minecraft:armor_stand ~1.4 ~-4 ~-.2 {NoGravity:1,Tags:["052a13"],DisabledSlots:986895,Rotation:[180f,0f],Small:1}

execute at @e[nbt={Item:{id:"minecraft:cookie"}}] align xyz run summon minecraft:armor_stand ~-.4 ~-3.4 ~-.2 {NoGravity:1,Tags:["052a12"],DisabledSlots:986895,Rotation:[180f,0f],Small:1}
execute at @e[nbt={Item:{id:"minecraft:cookie"}}] align xyz run summon minecraft:armor_stand ~.2 ~-3.4 ~-.2 {NoGravity:1,Tags:["052a11"],DisabledSlots:986895,Rotation:[180f,0f],Small:1}
execute at @e[nbt={Item:{id:"minecraft:cookie"}}] align xyz run summon minecraft:armor_stand ~.8 ~-3.4 ~-.2 {NoGravity:1,Tags:["052a10"],DisabledSlots:986895,Rotation:[180f,0f],Small:1}
execute at @e[nbt={Item:{id:"minecraft:cookie"}}] align xyz run summon minecraft:armor_stand ~1.4 ~-3.4 ~-.2 {NoGravity:1,Tags:["052a09"],DisabledSlots:986895,Rotation:[180f,0f],Small:1}

execute at @e[nbt={Item:{id:"minecraft:cookie"}}] align xyz run summon minecraft:armor_stand ~-.4 ~-2.8 ~-.2 {NoGravity:1,Tags:["052a08"],DisabledSlots:986895,Rotation:[180f,0f],Small:1}
execute at @e[nbt={Item:{id:"minecraft:cookie"}}] align xyz run summon minecraft:armor_stand ~.2 ~-2.8 ~-.2 {NoGravity:1,Tags:["052a07"],DisabledSlots:986895,Rotation:[180f,0f],Small:1}
execute at @e[nbt={Item:{id:"minecraft:cookie"}}] align xyz run summon minecraft:armor_stand ~.8 ~-2.8 ~-.2 {NoGravity:1,Tags:["052a06"],DisabledSlots:986895,Rotation:[180f,0f],Small:1,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1,tag:{SkullOwner:{Id:"248324bb-bd16-4924-a6b3-e82eed9c7bae",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGRlM2U3NGU2ODRhZDI0M2U1YjJkMmZmMzM3YTNlMjYxYzRlZmM5ZTFhZDg4YmQ3OThhM2RmYzU4ZGE4In19fQ=="}]}}}}]}
execute at @e[nbt={Item:{id:"minecraft:cookie"}}] align xyz run summon minecraft:armor_stand ~1.4 ~-2.8 ~-.2 {NoGravity:1,Tags:["052a05"],DisabledSlots:986895,Rotation:[180f,0f],Small:1}

execute at @e[nbt={Item:{id:"minecraft:cookie"}}] align xyz run summon minecraft:armor_stand ~-.4 ~-2.2 ~-.2 {NoGravity:1,Tags:["052a04"],DisabledSlots:986895,Rotation:[180f,0f],Small:1}
execute at @e[nbt={Item:{id:"minecraft:cookie"}}] align xyz run summon minecraft:armor_stand ~.2 ~-2.2 ~-.2 {NoGravity:1,Tags:["052a03"],DisabledSlots:986895,Rotation:[180f,0f],Small:1}
execute at @e[nbt={Item:{id:"minecraft:cookie"}}] align xyz run summon minecraft:armor_stand ~.8 ~-2.2 ~-.2 {NoGravity:1,Tags:["052a02"],DisabledSlots:986895,Rotation:[180f,0f],Small:1}
execute at @e[nbt={Item:{id:"minecraft:cookie"}}] align xyz run summon minecraft:armor_stand ~1.4 ~-2.2 ~-.2 {NoGravity:1,Tags:["052a01"],DisabledSlots:986895,Rotation:[180f,0f],Small:1}
