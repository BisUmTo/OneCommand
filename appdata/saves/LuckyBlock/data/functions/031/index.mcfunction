# - GAMERULE - #
gamerule announceAdvancements false
gamerule commandBlockOutput false
gamerule doDaylightCycle false
gamerule doEntityDrops true
gamerule doFireTick false
gamerule doLimitedCrafting true
gamerule doMobSpawning false
gamerule doWeatherCycle false
gamerule doTileDrops false
gamerule logAdminCommands false

# - RECIPES - #
advancement grant @a from minecraft:recipes/root
recipe take @a *

# - SCOREBOARD - #
scoreboard objectives add 031lnb dummy

# - UOVO DI LUCKYBLOCK - #
execute @e[tag=031lsw] ~ ~ ~ setblock ~ ~ ~ stained_glass 4
execute @e[tag=031lsw] ~ ~ ~ summon item_frame ~ ~ ~ {Tags:["031itf"],ItemDropChance:0.5f,Item:{id:"minecraft:barrier",tag:{display:{Name:"031pn1"}},Count:1b},Facing:0}
execute @e[tag=031lsw] ~ ~ ~ summon item_frame ~ ~ ~ {Tags:["031itf"],ItemDropChance:0.5f,Item:{id:"minecraft:barrier",tag:{display:{Name:"031pn2"}},Count:1b},Facing:0}
execute @e[tag=031lsw] ~ ~ ~ summon item_frame ~ ~ ~ {Tags:["031itf"],ItemDropChance:0.5f,Item:{id:"minecraft:barrier",tag:{display:{Name:"031pn3"}},Count:1b},Facing:1}
execute @e[tag=031lsw] ~ ~ ~ summon item_frame ~ ~ ~ {Tags:["031itf"],ItemDropChance:0.5f,Item:{id:"minecraft:barrier",tag:{display:{Name:"031pn4"}},Count:1b},Facing:1}
execute @e[tag=031lsw] ~ ~ ~ summon item_frame ~ ~ ~ {Tags:["031itf"],ItemDropChance:0.5f,Item:{id:"minecraft:barrier",tag:{display:{Name:"031pn5"}},Count:1b},Facing:2}
execute @e[tag=031lsw] ~ ~ ~ summon item_frame ~ ~ ~ {Tags:["031itf"],ItemDropChance:0.5f,Item:{id:"minecraft:barrier",tag:{display:{Name:"031pn6"}},Count:1b},Facing:2}
execute @e[tag=031lsw] ~ ~ ~ summon item_frame ~ ~ ~ {Tags:["031itf"],ItemDropChance:0.5f,Item:{id:"minecraft:barrier",tag:{display:{Name:"031pn7"}},Count:1b},Facing:3}
execute @e[tag=031lsw] ~ ~ ~ summon item_frame ~ ~ ~ {Tags:["031itf"],ItemDropChance:0.5f,Item:{id:"minecraft:barrier",tag:{display:{Name:"031pn8"}},Count:1b},Facing:3}
execute @e[tag=031lsw] ~ ~ ~ summon armor_stand ~ ~-1.25 ~ {Tags:["031lar"],NoGravity:1b,Invisible:1,ArmorItems:[{},{},{},{id:"minecraft:skull",Count:1b,tag:{SkullOwner:{Id:"b7e2f209-03a5-4b06-be9e-1941917861de",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTE5ZDI4YTg2MzJmYTRkODdjYTE5OWJiYzJlODhjZjM2OGRlZGQ1NTc0NzAxN2FlMzQ4NDM1NjlmN2E2MzRjNSJ9fX0="}]}}},Damage:3s}]}
execute @e[tag=031lsw] ~ ~ ~ kill @s

# - ENCODING LUCKYBLOCK - #
scoreboard players set @e[type=item] 031lnb 1 {Item:{id:"minecraft:barrier",tag:{display:{Name:"031pn1"}}}}
scoreboard players set @e[type=item] 031lnb 2 {Item:{id:"minecraft:barrier",tag:{display:{Name:"031pn2"}}}}
scoreboard players set @e[type=item] 031lnb 4 {Item:{id:"minecraft:barrier",tag:{display:{Name:"031pn3"}}}}
scoreboard players set @e[type=item] 031lnb 8 {Item:{id:"minecraft:barrier",tag:{display:{Name:"031pn4"}}}}
scoreboard players set @e[type=item] 031lnb 16 {Item:{id:"minecraft:barrier",tag:{display:{Name:"031pn5"}}}}
scoreboard players set @e[type=item] 031lnb 32 {Item:{id:"minecraft:barrier",tag:{display:{Name:"031pn6"}}}}
scoreboard players set @e[type=item] 031lnb 64 {Item:{id:"minecraft:barrier",tag:{display:{Name:"031pn7"}}}}
scoreboard players set @e[type=item] 031lnb 128 {Item:{id:"minecraft:barrier",tag:{display:{Name:"031pn8"}}}}
scoreboard players set @e[type=item] 031lnb 0 {Item:{id:"minecraft:item_frame"}}
execute @e[type=item,score_031lnb_min=0,score_031lnb=0] ~ ~ ~ scoreboard players add @e[tag=031lar,c=1] 031lnb 0
execute @e[type=item,score_031lnb_min=1,score_031lnb=1] ~ ~ ~ scoreboard players add @e[tag=031lar,c=1] 031lnb 1
execute @e[type=item,score_031lnb_min=2,score_031lnb=2] ~ ~ ~ scoreboard players add @e[tag=031lar,c=1] 031lnb 2
execute @e[type=item,score_031lnb_min=4,score_031lnb=4] ~ ~ ~ scoreboard players add @e[tag=031lar,c=1] 031lnb 4
execute @e[type=item,score_031lnb_min=8,score_031lnb=8] ~ ~ ~ scoreboard players add @e[tag=031lar,c=1] 031lnb 8
execute @e[type=item,score_031lnb_min=16,score_031lnb=16] ~ ~ ~ scoreboard players add @e[tag=031lar,c=1] 031lnb 16
execute @e[type=item,score_031lnb_min=32,score_031lnb=32] ~ ~ ~ scoreboard players add @e[tag=031lar,c=1] 031lnb 32
execute @e[type=item,score_031lnb_min=64,score_031lnb=64] ~ ~ ~ scoreboard players add @e[tag=031lar,c=1] 031lnb 64
execute @e[type=item,score_031lnb_min=128,score_031lnb=128] ~ ~ ~ scoreboard players add @e[tag=031lar,c=1] 031lnb 128
kill @e[type=item,score_031lnb_min=0,score_031lnb=128]

# - EFFETTI ESTETICI LUCKYBLOCK - #
tp @e[tag=031lar] ~ ~ ~ ~2 ~
execute @e[tag=031lar,score_031lnb_min=0] ~ ~ ~ particle crit ~ ~1.8 ~ .2 .2 .2 .02 3

# - DISTRUZIONE - #
execute @e[tag=031lar] ~ ~1 ~ detect ~ ~ ~ air * setblock ~ ~1 ~ air 0 destroy
execute @e[tag=031lar] ~ ~1 ~ detect ~ ~ ~ air * summon item ~ ~1 ~ {Motion:[0.0,.6,0.0],Item:{id:"minecraft:spawn_egg",Damage:61,Count:1b,tag:{HideFlags:1,display:{Name:"Lucky Block"},ench:[{id:33,lvl:1}],EntityTag:{id:"minecraft:blaze",Silent:1,Tags:["031lsw"]}}}}
execute @e[tag=031lar] ~ ~1 ~ detect ~ ~ ~ air * kill @s

# - INNESCHI - #
execute @e[tag=031lar] ~ ~2 ~ detect ~ ~ ~ air * scoreboard players tag @s add 031lat

# - NEGATIVI - #
# 0 Mr Creepa
execute @e[tag=031lat,score_031lnb_min=0,score_031lnb=0] ~ ~ ~ summon creeper ~ ~2 ~ {powered:1,CustomName:"Mr Creepa",CustomNameVisible:1}
# 1 Gigante
execute @e[tag=031lat,score_031lnb_min=1,score_031lnb=1] ~ ~ ~ summon giant ~ ~2 ~ 
# 2 Wither
execute @e[tag=031lat,score_031lnb_min=2,score_031lnb=2] ~ ~ ~ summon wither ~ ~2 ~ 
# 3 Slime gigante
execute @e[tag=031lat,score_031lnb_min=3,score_031lnb=3] ~ ~ ~ summon slime ~ ~2 ~ {Size:9}
# 4 Trappola lava+web
execute @e[tag=031lat,score_031lnb_min=4,score_031lnb=4] ~ ~ ~ fill ~-3 ~2 ~-3 ~3 ~-7 ~3 air
execute @e[tag=031lat,score_031lnb_min=4,score_031lnb=4] ~ ~ ~ fill ~-3 ~-8 ~-3 ~3 ~-8 ~3 web
execute @e[tag=031lat,score_031lnb_min=4,score_031lnb=4] ~ ~ ~ fill ~-3 ~-9 ~-3 ~3 ~-9 ~3 lava
# 5 Trappola anvil+gabbia
execute @e[tag=031lat,score_031lnb_min=5,score_031lnb=5] ~ ~ ~ execute @p ~ ~ ~ fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 stone_slab 8
execute @e[tag=031lat,score_031lnb_min=5,score_031lnb=5] ~ ~ ~ execute @p ~ ~ ~ fill ~-1 ~ ~-1 ~1 ~2 ~1 iron_bars
execute @e[tag=031lat,score_031lnb_min=5,score_031lnb=5] ~ ~ ~ execute @p ~ ~ ~ fill ~ ~ ~ ~ ~20 ~ air
execute @e[tag=031lat,score_031lnb_min=5,score_031lnb=5] ~ ~ ~ execute @p ~ ~ ~ fill ~ ~21 ~ ~ ~23 ~ anvil
# 6 Trappola lava+gabbia
execute @e[tag=031lat,score_031lnb_min=6,score_031lnb=6] ~ ~ ~ execute @p ~ ~ ~ fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 stone_slab 8
execute @e[tag=031lat,score_031lnb_min=6,score_031lnb=6] ~ ~ ~ execute @p ~ ~ ~ fill ~-1 ~ ~-1 ~1 ~3 ~1 iron_bars
execute @e[tag=031lat,score_031lnb_min=6,score_031lnb=6] ~ ~ ~ execute @p ~ ~ ~ setblock ~ ~3 ~ lava
execute @e[tag=031lat,score_031lnb_min=6,score_031lnb=6] ~ ~ ~ execute @p ~ ~ ~ fill ~ ~ ~ ~ ~2 ~ air
# 7 Trappola acqua+ossidiana
execute @e[tag=031lat,score_031lnb_min=7,score_031lnb=7] ~ ~ ~ execute @p ~ ~ ~ fill ~-1 ~-1 ~-1 ~1 ~2 ~1 obsidian
execute @e[tag=031lat,score_031lnb_min=7,score_031lnb=7] ~ ~ ~ execute @p ~ ~ ~ fill ~-1 ~1 ~ ~1 ~1 ~ glass_pane
execute @e[tag=031lat,score_031lnb_min=7,score_031lnb=7] ~ ~ ~ execute @p ~ ~ ~ fill ~ ~1 ~-1 ~ ~1 ~1 glass_pane
execute @e[tag=031lat,score_031lnb_min=7,score_031lnb=7] ~ ~ ~ execute @p ~ ~ ~ fill ~ ~ ~ ~ ~1 ~ water
# 8 Trappola web

#



# - NEUTRI - #
# 128 Piggy
execute @e[tag=031lat,score_031lnb_min=128,score_031lnb=128] ~ ~ ~ summon pig ~-5 ~9 ~0 {NoGravity:1,CustomName:"Piggy",Rotation:[-90f,0f],CustomNameVisible:1,Tags:["031128"],Passengers:[{id:"area_effect_cloud",Tags:["031128"],Radius:0f,Duration:120}]}
execute @e[tag=031128,type=area_effect_cloud] ~ ~ ~ summon item ~ ~ ~ {Tags:["031128"],Motion:[-.1,0.0,0.0],Item:{id:"minecraft:wooden_button",Count:1b},PickupDelay:32767}
execute @e[tag=031128] ~ ~ ~ kill @e[tag=031128,type=item,rm=20]
execute @a ~ ~ ~ tp @e[tag=031128,rm=32,r=33] ~ ~-400 ~
tp @e[tag=031128,type=!item] ~.1 ~ ~

# - POSITIVI - #
# 255
execute @e[tag=031lat,score_031lnb_min=255,score_031lnb=255] ~ ~ ~

# - FINE INNESCO - #
kill @e[tag=031lat]

# - EXTRA - #
# summon item ~ ~1 ~ {Item:{id:"minecraft:spawn_egg",Damage:61,Count:1b,tag:{HideFlags:1,display:{Name:"Lucky Block"},ench:[{id:33,lvl:1}],EntityTag:{id:"minecraft:blaze",Silent:1,Tags:["031lsw"]}}}}