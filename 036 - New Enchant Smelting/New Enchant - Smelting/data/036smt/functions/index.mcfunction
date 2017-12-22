# SMELTING ENCHANT

# ADD SCOREBOARD
scoreboard objectives add 036p01 minecraft.mined:minecraft.cobblestone
scoreboard objectives add 036s02 minecraft.mined:minecraft.sand
scoreboard objectives add 036s03 minecraft.mined:minecraft.red_sand
scoreboard objectives add 036p04 minecraft.mined:minecraft.gold_ore
scoreboard objectives add 036p05 minecraft.mined:minecraft.iron_ore
scoreboard objectives add 036a06 minecraft.mined:minecraft.oak_log
scoreboard objectives add 036a07 minecraft.mined:minecraft.spruce_log
scoreboard objectives add 036a08 minecraft.mined:minecraft.birch_log
scoreboard objectives add 036a09 minecraft.mined:minecraft.jungle_log
scoreboard objectives add 036a10 minecraft.mined:minecraft.acacia_log
scoreboard objectives add 036a11 minecraft.mined:minecraft.dark_oak_log
scoreboard objectives add 036b12 minecraft.mined:minecraft.wet_sponge
scoreboard objectives add 036s13 minecraft.mined:minecraft.clay
scoreboard objectives add 036p14 minecraft.mined:minecraft.netherrack
scoreboard objectives add 036p15 minecraft.mined:minecraft.stone_bricks
scoreboard objectives add 036p16 minecraft.mined:minecraft.white_terracotta
scoreboard objectives add 036p17 minecraft.mined:minecraft.orange_terracotta
scoreboard objectives add 036p18 minecraft.mined:minecraft.magenta_terracotta
scoreboard objectives add 036p19 minecraft.mined:minecraft.light_blue_terracotta
scoreboard objectives add 036p20 minecraft.mined:minecraft.yellow_terracotta
scoreboard objectives add 036p21 minecraft.mined:minecraft.lime_terracotta
scoreboard objectives add 036p22 minecraft.mined:minecraft.pink_terracotta
scoreboard objectives add 036p23 minecraft.mined:minecraft.gray_terracotta
scoreboard objectives add 036p24 minecraft.mined:minecraft.light_gray_terracotta
scoreboard objectives add 036p25 minecraft.mined:minecraft.cyan_terracotta
scoreboard objectives add 036p26 minecraft.mined:minecraft.purple_terracotta
scoreboard objectives add 036p27 minecraft.mined:minecraft.blue_terracotta
scoreboard objectives add 036p28 minecraft.mined:minecraft.brown_terracotta
scoreboard objectives add 036p29 minecraft.mined:minecraft.green_terracotta
scoreboard objectives add 036p30 minecraft.mined:minecraft.red_terracotta
scoreboard objectives add 036p31 minecraft.mined:minecraft.black_terracotta
scoreboard objectives add 036b32 minecraft.mined:minecraft.cactus
scoreboard objectives add 036a33 minecraft.mined:minecraft.oak_bark
scoreboard objectives add 036a34 minecraft.mined:minecraft.spruce_bark
scoreboard objectives add 036a35 minecraft.mined:minecraft.birch_bark
scoreboard objectives add 036a36 minecraft.mined:minecraft.jungle_bark
scoreboard objectives add 036a37 minecraft.mined:minecraft.acacia_bark
scoreboard objectives add 036a38 minecraft.mined:minecraft.dark_oak_bark

scoreboard objectives add 036id0 dummy
scoreboard objectives add 036id1 dummy
scoreboard objectives add 036id2 dummy
scoreboard objectives add 036id3 dummy
scoreboard objectives add 036id4 dummy
scoreboard objectives add 036lv0 dummy 
scoreboard objectives add 036lv1 dummy
scoreboard objectives add 036lv2 dummy
scoreboard objectives add 036lv3 dummy
scoreboard objectives add 036lv4 dummy

# ITEM CONVERTION
# cobblestone
execute as @a[scores={036p01=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:1}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:cobblestone",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:stone"}}
execute as @a[scores={036p01=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:2}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:cobblestone",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:stone",Count:2b}}
execute as @a[scores={036p01=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:3}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:cobblestone",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:stone",Count:3b}}
# sand
execute as @a[scores={036s02=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:1}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:sand",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:glass"}}
execute as @a[scores={036s02=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:2}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:sand",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:glass",Count:2b}}
execute as @a[scores={036s02=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:3}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:sand",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:glass",Count:3b}}
# red_sand
execute as @a[scores={036s03=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:1}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:red_sand",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:glass"}}
execute as @a[scores={036s03=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:2}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:red_sand",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:glass",Count:2b}}
execute as @a[scores={036s03=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:3}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:red_sand",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:glass",Count:3b}}
# gold_ore
execute as @a[scores={036p04=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:1}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:gold_ore",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:gold_ingot"}}
execute as @a[scores={036p04=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:2}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:gold_ore",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:gold_ingot",Count:2b}}
execute as @a[scores={036p04=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:3}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:gold_ore",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:gold_ingot",Count:3b}}
# iron_ore
execute as @a[scores={036p05=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:1}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:iron_ore",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:iron_ingot"}}
execute as @a[scores={036p05=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:2}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:iron_ore",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:iron_ingot",Count:2b}}
execute as @a[scores={036p05=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:3}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:iron_ore",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:iron_ingot",Count:3b}}
# oak_log
execute as @a[scores={036a06=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:1}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:oak_log",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:charcoal"}}
execute as @a[scores={036a06=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:2}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:oak_log",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:charcoal",Count:2b}}
execute as @a[scores={036a06=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:3}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:oak_log",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:charcoal",Count:3b}}
# spruce_log
execute as @a[scores={036a07=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:1}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:spruce_log",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:charcoal"}}
execute as @a[scores={036a07=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:2}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:spruce_log",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:charcoal",Count:2b}}
execute as @a[scores={036a07=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:3}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:spruce_log",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:charcoal",Count:3b}}
# birch_log
execute as @a[scores={036a08=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:1}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:birch_log",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:charcoal"}}
execute as @a[scores={036a08=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:2}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:birch_log",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:charcoal",Count:2b}}
execute as @a[scores={036a08=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:3}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:birch_log",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:charcoal",Count:3b}}
# jungle_log
execute as @a[scores={036a09=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:1}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:jungle_log",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:charcoal"}}
execute as @a[scores={036a09=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:2}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:jungle_log",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:charcoal",Count:2b}}
execute as @a[scores={036a09=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:3}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:jungle_log",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:charcoal",Count:3b}}
# acacia_log
execute as @a[scores={036a10=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:1}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:acacia_log",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:charcoal"}}
execute as @a[scores={036a10=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:2}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:acacia_log",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:charcoal",Count:2b}}
execute as @a[scores={036a10=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:3}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:acacia_log",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:charcoal",Count:3b}}
# dark_oak_log
execute as @a[scores={036a11=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:1}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:dark_oak_log",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:charcoal"}}
execute as @a[scores={036a11=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:2}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:dark_oak_log",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:charcoal",Count:2b}}
execute as @a[scores={036a11=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:3}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:dark_oak_log",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:charcoal",Count:3b}}
# wet_sponge
execute as @a[scores={036b12=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:1}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:wet_sponge",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:sponge"}}
execute as @a[scores={036b12=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:2}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:wet_sponge",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:sponge"}}
execute as @a[scores={036b12=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:3}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:wet_sponge",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:sponge"}}
# clay
execute as @a[scores={036s13=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:1}]}}}] unless entity @s[nbt={SelectedItem:{tag:{ench:[{id:33}]}}}] as @e[type=item,limit=4,nbt={Item:{id:"minecraft:clay_ball",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:brick"}}
execute as @a[scores={036s13=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:2}]}}}] unless entity @s[nbt={SelectedItem:{tag:{ench:[{id:33}]}}}] as @e[type=item,limit=4,nbt={Item:{id:"minecraft:clay_ball",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:brick",Count:2b}}
execute as @a[scores={036s13=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:3}]}}}] unless entity @s[nbt={SelectedItem:{tag:{ench:[{id:33}]}}}] as @e[type=item,limit=4,nbt={Item:{id:"minecraft:clay_ball",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:brick",Count:3b}}
execute as @a[scores={036s13=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:1}]}}}] if entity @s[nbt={SelectedItem:{tag:{ench:[{id:33}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:clay",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:terracotta"}}
execute as @a[scores={036s13=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:2}]}}}] if entity @s[nbt={SelectedItem:{tag:{ench:[{id:33}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:clay",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:terracotta",Count:2b}}
execute as @a[scores={036s13=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:3}]}}}] if entity @s[nbt={SelectedItem:{tag:{ench:[{id:33}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:clay",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:terracotta",Count:3b}}
# netherrack
execute as @a[scores={036p14=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:1}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:netherrack",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:nether_brick"}}
execute as @a[scores={036p14=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:2}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:netherrack",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:nether_brick",Count:2b}}
execute as @a[scores={036p14=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:3}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:netherrack",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:nether_brick",Count:3b}}
# stone_bricks
execute as @a[scores={036p15=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:1}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:stone_bricks",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:cracked_stone_bricks"}}
execute as @a[scores={036p15=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:2}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:stone_bricks",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:cracked_stone_bricks",Count:2b}}
execute as @a[scores={036p15=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:3}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:stone_bricks",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:cracked_stone_bricks",Count:3b}}
# white_terracotta
execute as @a[scores={036p16=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:1}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:white_terracotta",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:white_glazed_terracotta"}}
execute as @a[scores={036p16=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:2}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:white_terracotta",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:white_glazed_terracotta",Count:2b}}
execute as @a[scores={036p16=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:3}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:white_terracotta",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:white_glazed_terracotta",Count:3b}}
# orange_terracotta
execute as @a[scores={036p17=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:1}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:orange_terracotta",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:orange_glazed_terracotta"}}
execute as @a[scores={036p17=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:2}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:orange_terracotta",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:orange_glazed_terracotta",Count:2b}}
execute as @a[scores={036p17=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:3}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:orange_terracotta",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:orange_glazed_terracotta",Count:3b}}
# magenta_terracotta
execute as @a[scores={036p18=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:1}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:magenta_terracotta",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:magenta_glazed_terracotta"}}
execute as @a[scores={036p18=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:2}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:magenta_terracotta",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:magenta_glazed_terracotta",Count:2b}}
execute as @a[scores={036p18=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:3}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:magenta_terracotta",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:magenta_glazed_terracotta",Count:3b}}
# light_blue_terracotta
execute as @a[scores={036p19=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:1}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:light_blue_terracotta",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:light_blue_glazed_terracotta"}}
execute as @a[scores={036p19=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:2}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:light_blue_terracotta",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:light_blue_glazed_terracotta",Count:2b}}
execute as @a[scores={036p19=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:3}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:light_blue_terracotta",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:light_blue_glazed_terracotta",Count:3b}}
# yellow_terracotta
execute as @a[scores={036p20=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:1}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:yellow_terracotta",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:yellow_glazed_terracotta"}}
execute as @a[scores={036p20=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:2}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:yellow_terracotta",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:yellowglazed_terracotta",Count:2b}}
execute as @a[scores={036p20=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:3}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:yellow_terracotta",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:yellow_glazed_terracotta",Count:3b}}
# lime_terracotta
execute as @a[scores={036p21=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:1}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:lime_terracotta",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:lime_glazed_terracotta"}}
execute as @a[scores={036p21=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:2}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:lime_terracotta",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:lime_glazed_terracotta",Count:2b}}
execute as @a[scores={036p21=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:3}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:lime_terracotta",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:lime_glazed_terracotta",Count:3b}}
# pink_terracotta
execute as @a[scores={036p22=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:1}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:pink_terracotta",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:pink_glazed_terracotta"}}
execute as @a[scores={036p22=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:2}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:pink_terracotta",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:pink_glazed_terracotta",Count:2b}}
execute as @a[scores={036p22=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:3}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:pink_terracotta",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:pink_glazed_terracotta",Count:3b}}
# gray_terracotta
execute as @a[scores={036p23=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:1}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:gray_terracotta",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:gray_glazed_terracotta"}}
execute as @a[scores={036p23=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:2}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:gray_terracotta",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:gray_glazed_terracotta",Count:2b}}
execute as @a[scores={036p23=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:3}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:gray_terracotta",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:gray_glazed_terracotta",Count:3b}}
# light_gray_terracotta
execute as @a[scores={036p24=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:1}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:light_gray_terracotta",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:light_gray_glazed_terracotta"}}
execute as @a[scores={036p24=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:2}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:light_gray_terracotta",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:light_gray_glazed_terracotta",Count:2b}}
execute as @a[scores={036p24=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:3}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:light_gray_terracotta",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:light_gray_glazed_terracotta",Count:3b}}
# cyan_terracotta
execute as @a[scores={036p25=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:1}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:cyan_terracotta",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:cyan_glazed_terracotta"}}
execute as @a[scores={036p25=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:2}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:cyan_terracotta",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:cyan_glazed_terracotta",Count:2b}}
execute as @a[scores={036p25=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:3}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:cyan_terracotta",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:cyan_glazed_terracotta",Count:3b}}
# purple_terracotta
execute as @a[scores={036p26=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:1}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:purple_terracotta",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:purple_glazed_terracotta"}}
execute as @a[scores={036p26=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:2}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:purple_terracotta",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:purple_glazed_terracotta",Count:2b}}
execute as @a[scores={036p26=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:3}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:purple_terracotta",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:purple_glazed_terracotta",Count:3b}}
# blue_terracotta
execute as @a[scores={036p27=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:1}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:blue_terracotta",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:blue_glazed_terracotta"}}
execute as @a[scores={036p27=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:2}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:blue_terracotta",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:blue_glazed_terracotta",Count:2b}}
execute as @a[scores={036p27=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:3}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:blue_terracotta",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:blue_glazed_terracotta",Count:3b}}
# brown_terracotta
execute as @a[scores={036p28=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:1}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:brown_terracotta",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:brown_glazed_terracotta"}}
execute as @a[scores={036p28=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:2}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:brown_terracotta",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:brown_glazed_terracotta",Count:2b}}
execute as @a[scores={036p28=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:3}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:brown_terracotta",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:brown_glazed_terracotta",Count:3b}}
# green_terracotta
execute as @a[scores={036p29=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:1}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:green_terracotta",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:green_glazed_terracotta"}}
execute as @a[scores={036p29=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:2}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:green_terracotta",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:green_glazed_terracotta",Count:2b}}
execute as @a[scores={036p29=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:3}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:green_terracotta",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:green_glazed_terracotta",Count:3b}}
# red_terracotta
execute as @a[scores={036p30=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:1}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:red_terracotta",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:red_glazed_terracotta"}}
execute as @a[scores={036p30=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:2}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:red_terracotta",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:red_glazed_terracotta",Count:2b}}
execute as @a[scores={036p30=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:3}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:red_terracotta",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:red_glazed_terracotta",Count:3b}}
# black_terracotta
execute as @a[scores={036p31=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:1}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:black_terracotta",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:black_glazed_terracotta"}}
execute as @a[scores={036p31=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:2}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:black_terracotta",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:black_glazed_terracotta",Count:2b}}
execute as @a[scores={036p31=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:3}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:black_terracotta",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:black_glazed_terracotta",Count:3b}}
# cactus
execute as @a[scores={036b32=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:1}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:cactus",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:cactus_green"}}
execute as @a[scores={036b32=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:2}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:cactus",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:cactus_green",Count:2b}}
execute as @a[scores={036b32=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:3}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:cactus",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:cactus_green",Count:3b}}
# oak_bark
execute as @a[scores={036a33=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:1}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:oak_bark",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:charcoal"}}
execute as @a[scores={036a33=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:2}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:oak_bark",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:charcoal",Count:2b}}
execute as @a[scores={036a33=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:3}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:oak_bark",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:charcoal",Count:3b}}
# spruce_bark
execute as @a[scores={036a34=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:1}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:spruce_bark",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:charcoal"}}
execute as @a[scores={036a34=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:2}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:spruce_bark",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:charcoal",Count:2b}}
execute as @a[scores={036a34=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:3}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:spruce_bark",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:charcoal",Count:3b}}
# birch_bark
execute as @a[scores={036a35=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:1}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:birch_bark",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:charcoal"}}
execute as @a[scores={036a35=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:2}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:birch_bark",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:charcoal",Count:2b}}
execute as @a[scores={036a35=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:3}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:birch_bark",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:charcoal",Count:3b}}
# jungle_bark
execute as @a[scores={036a36=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:1}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:jungle_bark",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:charcoal"}}
execute as @a[scores={036a36=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:2}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:jungle_bark",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:charcoal",Count:2b}}
execute as @a[scores={036a36=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:3}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:jungle_bark",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:charcoal",Count:3b}}
# acacia_bark
execute as @a[scores={036a37=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:1}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:acacia_bark",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:charcoal"}}
execute as @a[scores={036a37=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:2}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:acacia_bark",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:charcoal",Count:2b}}
execute as @a[scores={036a37=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:3}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:acacia_bark",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:charcoal",Count:3b}}
# dark_oak_bark
execute as @a[scores={036a38=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:1}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:dark_oak_bark",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:charcoal"}}
execute as @a[scores={036a38=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:2}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:dark_oak_bark",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:charcoal",Count:2b}}
execute as @a[scores={036a38=1..},nbt={SelectedItem:{tag:{ench:[{id:36,lvl:3}]}}}] as @e[type=item,limit=1,nbt={Item:{id:"minecraft:dark_oak_bark",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:charcoal",Count:3b}}

scoreboard players reset @a 036p01
scoreboard players reset @a 036s02
scoreboard players reset @a 036s03
scoreboard players reset @a 036p04
scoreboard players reset @a 036p05
scoreboard players reset @a 036a06
scoreboard players reset @a 036a07
scoreboard players reset @a 036a08
scoreboard players reset @a 036a09
scoreboard players reset @a 036a10
scoreboard players reset @a 036a11
scoreboard players reset @a 036b12
scoreboard players reset @a 036s13
scoreboard players reset @a 036p14
scoreboard players reset @a 036p15
scoreboard players reset @a 036p16
scoreboard players reset @a 036p17
scoreboard players reset @a 036p18
scoreboard players reset @a 036p19
scoreboard players reset @a 036p20
scoreboard players reset @a 036p21
scoreboard players reset @a 036p22
scoreboard players reset @a 036p23
scoreboard players reset @a 036p24
scoreboard players reset @a 036p25
scoreboard players reset @a 036p26
scoreboard players reset @a 036p27
scoreboard players reset @a 036p28
scoreboard players reset @a 036p29
scoreboard players reset @a 036p30
scoreboard players reset @a 036p31
scoreboard players reset @a 036b32
scoreboard players reset @a 036a33
scoreboard players reset @a 036a34
scoreboard players reset @a 036a35
scoreboard players reset @a 036a36
scoreboard players reset @a 036a37
scoreboard players reset @a 036a38

# DISPLAY ENCH
# item
execute as @e[type=item,nbt={Item:{tag:{ench:[{id:36,lvl:1}]}}}] run data merge entity @s {Item:{tag:{display:{Lore:["§r§7Smelting I§r"]}}}}
execute as @e[type=item,nbt={Item:{tag:{ench:[{id:36,lvl:2}]}}}] run data merge entity @s {Item:{tag:{display:{Lore:["§r§7Smelting II§r"]}}}}
execute as @e[type=item,nbt={Item:{tag:{ench:[{id:36,lvl:3}]}}}] run data merge entity @s {Item:{tag:{display:{Lore:["§r§7Smelting III§r"]}}}}
# book
execute as @e[type=item,nbt={Item:{tag:{StoredEnchantments:[{id:36,lvl:1}]}}}] run data merge entity @s {Item:{tag:{display:{Lore:["§r§7Smelting I§r"]}}}}
execute as @e[type=item,nbt={Item:{tag:{StoredEnchantments:[{id:36,lvl:2}]}}}] run data merge entity @s {Item:{tag:{display:{Lore:["§r§7Smelting II§r"]}}}}
execute as @e[type=item,nbt={Item:{tag:{StoredEnchantments:[{id:36,lvl:3}]}}}] run data merge entity @s {Item:{tag:{display:{Lore:["§r§7Smelting III§r"]}}}}

# ENCHANT UNION
# tags adder
tag @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:diamond_pickaxe"}}] add 036tls
tag @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:diamond_shovel"}}] add 036tls
tag @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:diamond_axe"}}] add 036tls
tag @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:iron_pickaxe"}}] add 036tls
tag @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:iron_shovel"}}] add 036tls
tag @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:iron_axe"}}] add 036tls
tag @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:golden_pickaxe"}}] add 036tls
tag @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:golden_shovel"}}] add 036tls
tag @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe"}}] add 036tls
tag @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:stone_pickaxe"}}] add 036tls
tag @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:stone_shovel"}}] add 036tls
tag @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:stone_axe"}}] add 036tls
tag @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:wooden_pickaxe"}}] add 036tls
tag @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:wooden_shovel"}}] add 036tls
tag @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:wooden_axe"}}] add 036tls
# array[0]
execute as @e[tag=036tls] store result score @s 036id0 run data get entity @s Item.tag.ench[0].id
execute as @e[tag=036tls] store result score @s 036lv0 run data get entity @s Item.tag.ench[0].lvl
scoreboard players set @e[tag=036tls,scores={036id0=0}] 036id0 -1
# array[1]
execute as @e[tag=036tls] store result score @s 036id1 run data get entity @s Item.tag.ench[1].id
execute as @e[tag=036tls] store result score @s 036lv1 run data get entity @s Item.tag.ench[1].lvl
scoreboard players set @e[tag=036tls,scores={036id1=0}] 036id1 -1
# array[2]
execute as @e[tag=036tls] store result score @s 036id2 run data get entity @s Item.tag.ench[2].id
execute as @e[tag=036tls] store result score @s 036lv2 run data get entity @s Item.tag.ench[2].lvl
scoreboard players set @e[tag=036tls,scores={036id2=0}] 036id2 -1
# array[3]
execute as @e[tag=036tls] store result score @s 036id3 run data get entity @s Item.tag.ench[3].id
execute as @e[tag=036tls] store result score @s 036lv3 run data get entity @s Item.tag.ench[3].lvl
scoreboard players set @e[tag=036tls,scores={036id3=0}] 036id3 -1
# array[4]
execute as @e[tag=036tls] store result score @s 036id4 run data get entity @s Item.tag.ench[4].id
execute as @e[tag=036tls] store result score @s 036lv4 run data get entity @s Item.tag.ench[4].lvl
scoreboard players set @e[tag=036tls,scores={036id4=0}] 036id4 -1
# add new ench
execute at @a as @e[type=item,nbt={Item:{tag:{StoredEnchantments:[{id:36}]}},OnGround:1b},limit=1] at @s if block ~ ~-1 ~ #036smt:anvils as @e[tag=036tls,distance=..1,nbt=!{Item:{tag:{ench:[{id:36}]}}},limit=1] run playsound minecraft:block.anvil.use master @a
execute at @a as @e[type=item,nbt={Item:{tag:{StoredEnchantments:[{id:36,lvl:1}]}},OnGround:1b},limit=1] at @s if block ~ ~-1 ~ #036smt:anvils store success entity @s Age short 6000 as @e[tag=036tls,distance=..1,nbt=!{Item:{tag:{ench:[{id:36}]}}},limit=1] run data merge entity @s {Item:{tag:{ench:[{},{},{},{},{},{id:36,lvl:1}]}},Motion:[0.0,0.3,0.0]}
execute at @a as @e[type=item,nbt={Item:{tag:{StoredEnchantments:[{id:36,lvl:2}]}},OnGround:1b},limit=1] at @s if block ~ ~-1 ~ #036smt:anvils store success entity @s Age short 6000 as @e[tag=036tls,distance=..1,nbt=!{Item:{tag:{ench:[{id:36}]}}},limit=1] run data merge entity @s {Item:{tag:{ench:[{},{},{},{},{},{id:36,lvl:2}]}},Motion:[0.0,0.3,0.0]}
execute at @a as @e[type=item,nbt={Item:{tag:{StoredEnchantments:[{id:36,lvl:3}]}},OnGround:1b},limit=1] at @s if block ~ ~-1 ~ #036smt:anvils store success entity @s Age short 6000 as @e[tag=036tls,distance=..1,nbt=!{Item:{tag:{ench:[{id:36}]}}},limit=1] run data merge entity @s {Item:{tag:{ench:[{},{},{},{},{},{id:36,lvl:3}]}},Motion:[0.0,0.3,0.0]}
# put old ench
execute as @e[tag=036tls] store result entity @s Item.tag.ench[0].id int 1 run scoreboard players get @s 036id0
execute as @e[tag=036tls] store result entity @s Item.tag.ench[0].lvl int 1 run scoreboard players get @s 036lv0
execute as @e[tag=036tls] store result entity @s Item.tag.ench[1].id int 1 run scoreboard players get @s 036id1
execute as @e[tag=036tls] store result entity @s Item.tag.ench[1].lvl int 1 run scoreboard players get @s 036lv1
execute as @e[tag=036tls] store result entity @s Item.tag.ench[2].id int 1 run scoreboard players get @s 036id2
execute as @e[tag=036tls] store result entity @s Item.tag.ench[2].lvl int 1 run scoreboard players get @s 036lv2
execute as @e[tag=036tls] store result entity @s Item.tag.ench[3].id int 1 run scoreboard players get @s 036id3
execute as @e[tag=036tls] store result entity @s Item.tag.ench[3].lvl int 1 run scoreboard players get @s 036lv3
execute as @e[tag=036tls] store result entity @s Item.tag.ench[4].id int 1 run scoreboard players get @s 036id4
execute as @e[tag=036tls] store result entity @s Item.tag.ench[4].lvl int 1 run scoreboard players get @s 036lv4
# 2 books
execute at @a as @e[type=item,nbt={Item:{tag:{StoredEnchantments:[{id:36,lvl:1}]}},OnGround:1b},limit=1] at @s if block ~ ~-1 ~ #036smt:anvils as @e[type=item,nbt={Item:{tag:{StoredEnchantments:[{id:36,lvl:1}]}},OnGround:1b},limit=1,distance=0.0001..1] run playsound minecraft:block.anvil.use master @a
execute at @a as @e[type=item,nbt={Item:{tag:{StoredEnchantments:[{id:36,lvl:2}]}},OnGround:1b},limit=1] at @s if block ~ ~-1 ~ #036smt:anvils as @e[type=item,nbt={Item:{tag:{StoredEnchantments:[{id:36,lvl:2}]}},OnGround:1b},limit=1,distance=0.0001..1] run playsound minecraft:block.anvil.use master @a
execute at @a as @e[type=item,nbt={Item:{tag:{StoredEnchantments:[{id:36,lvl:1}]}},OnGround:1b},limit=1] at @s if block ~ ~-1 ~ #036smt:anvils store success entity @s Age short 6000 as @e[type=item,nbt={Item:{tag:{StoredEnchantments:[{id:36,lvl:1}]}},OnGround:1b},limit=1,distance=0.0001..1] run data merge entity @s {Item:{tag:{StoredEnchantments:[{id:36,lvl:2}]}},Motion:[0.0,0.3,0.0]}
execute at @a as @e[type=item,nbt={Item:{tag:{StoredEnchantments:[{id:36,lvl:2}]}},OnGround:1b},limit=1] at @s if block ~ ~-1 ~ #036smt:anvils store success entity @s Age short 6000 as @e[type=item,nbt={Item:{tag:{StoredEnchantments:[{id:36,lvl:2}]}},OnGround:1b},limit=1,distance=0.0001..1] run data merge entity @s {Item:{tag:{StoredEnchantments:[{id:36,lvl:3}]}},Motion:[0.0,0.3,0.0]}

advancement revoke @a only 036smt:tick
