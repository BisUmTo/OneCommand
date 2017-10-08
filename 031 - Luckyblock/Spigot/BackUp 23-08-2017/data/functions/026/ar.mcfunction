# give @p minecraft:armor_stand 1 0 {EntityTag:{Invisible:1,Marker:1,NoGravity:1,CustomNameVisible:1,Tags:["026arm"],CustomName:"§k~§r §4§lRegole§r §k~§r"}}
# LV 1 #
execute BisUmTo ~ ~ ~ summon item ~ ~ ~ {Item:{id:"minecraft:sign",Count:1b,tag:{CanPlaceOn:["minecraft:jukebox"],HideFlags:16,display:{Name:"§f§o§lFind the Sign §r- §4§lLV1",Lore:["§7§lMaestro Mooseca!"]},BlockEntityTag:{Text4:"{\"text\":\"\"}",Text3:"{\"italic\":true,\"color\":\"white\",\"text\":\"Find The Sign\"}",Text2:"{\"underlined\":true,\"color\":\"dark_red\",\"text\":\"▶Prossimo Livello◀\"}",id:"minecraft:sign",Text1:"{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger LEVEL set 2\"},\"text\":\"\"}"},},Damage:0s},Fire:-1s}

# LV 2 #
execute BisUmTo ~ ~ ~ summon item ~ ~ ~ {Item:{id:"minecraft:sign",Count:1b,tag:{CanPlaceOn:[""],HideFlags:16,display:{Name:"§f§o§lFind the Sign §r- §4§lLV2",Lore:[""]},BlockEntityTag:{Text4:"{\"text\":\"\"}",Text3:"{\"italic\":true,\"color\":\"white\",\"text\":\"Find The Sign\"}",Text2:"{\"underlined\":true,\"color\":\"dark_red\",\"text\":\"▶Prossimo Livello◀\"}",id:"minecraft:sign",Text1:"{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger LEVEL set 3\"},\"text\":\"\"}"},},Damage:0s},Fire:-1s}

# LV 3 #
execute BisUmTo ~ ~ ~ summon item ~ ~ ~ {Item:{id:"minecraft:sign",Count:1b,tag:{CanPlaceOn:[""],HideFlags:16,display:{Name:"§f§o§lFind the Sign §r- §4§lLV3",Lore:["§7§lMaestro Mooseca!"]},BlockEntityTag:{Text4:"{\"text\":\"\"}",Text3:"{\"italic\":true,\"color\":\"white\",\"text\":\"Find The Sign\"}",Text2:"{\"underlined\":true,\"color\":\"dark_red\",\"text\":\"▶Prossimo Livello◀\"}",id:"minecraft:sign",Text1:"{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger LEVEL set 4\"},\"text\":\"\"}"},},Damage:0s},Fire:-1s}

# LV 4 #
execute BisUmTo ~ ~ ~ summon item ~ ~ ~ {Item:{id:"minecraft:sign",Count:1b,tag:{CanPlaceOn:[""],HideFlags:16,display:{Name:"§f§o§lFind the Sign §r- §4§lLV4",Lore:["§7§lMaestro Mooseca!"]},BlockEntityTag:{Text4:"{\"text\":\"\"}",Text3:"{\"italic\":true,\"color\":\"white\",\"text\":\"Find The Sign\"}",Text2:"{\"underlined\":true,\"color\":\"dark_red\",\"text\":\"▶Prossimo Livello◀\"}",id:"minecraft:sign",Text1:"{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger LEVEL set 5\"},\"text\":\"\"}"},},Damage:0s},Fire:-1s}

# LV 5 #
execute BisUmTo ~ ~ ~ summon item ~ ~ ~ {Item:{id:"minecraft:sign",Count:1b,tag:{CanPlaceOn:["minecraft:emerald_ore"],HideFlags:16,display:{Name:"§f§o§lFind the Sign §r- §4§lLV5",Lore:["§7§lIDLAREMS!"]},BlockEntityTag:{Text4:"{\"text\":\"\"}",Text3:"{\"italic\":true,\"color\":\"white\",\"text\":\"Find The Sign\"}",Text2:"{\"underlined\":true,\"color\":\"dark_red\",\"text\":\"▶Prossimo Livello◀\"}",id:"minecraft:sign",Text1:"{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger LEVEL set 6\"},\"text\":\"\"}"},},Damage:0s},Fire:-1s}

# LV 6 #
execute BisUmTo ~ ~ ~ summon item ~ ~ ~ {Item:{id:"minecraft:sign",Count:1b,tag:{CanPlaceOn:["minecraft:monster_egg"],HideFlags:16,display:{Name:"§f§o§lFind the Sign §r- §4§lLV5",Lore:["§7§lIDLAREMS!"]},BlockEntityTag:{Text4:"{\"text\":\"\"}",Text3:"{\"italic\":true,\"color\":\"white\",\"text\":\"Find The Sign\"}",Text2:"{\"underlined\":true,\"color\":\"dark_red\",\"text\":\"▶Prossimo Livello◀\"}",id:"minecraft:sign",Text1:"{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger LEVEL set 7\"},\"text\":\"\"}"},},Damage:0s},Fire:-1s}

# LV 9 #
execute BisUmTo ~ ~ ~ summon item ~ ~ ~ {Item:{id:"minecraft:sign",Count:1b,tag:{CanPlaceOn:["minecraft:monster_egg"],HideFlags:16,display:{Name:"§f§o§lFind the Sign §r- §4§lLV5",Lore:["§7§lIDLAREMS!"]},BlockEntityTag:{Text4:"{\"text\":\"\"}",Text3:"{\"italic\":true,\"color\":\"white\",\"text\":\"Find The Sign\"}",Text2:"{\"underlined\":true,\"color\":\"dark_red\",\"text\":\"▶Prossimo Livello◀\"}",id:"minecraft:sign",Text1:"{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger LEVEL set 10\"},\"text\":\"\"}"},},Damage:0s},Fire:-1s}

execute BisUmTo ~ ~ ~ summon item ~ ~ ~ {Item:{id:"minecraft:sign",Count:1b,tag:{CanPlaceOn:[""],HideFlags:16,display:{Name:"§f§o§lFind the Sign §r- §4§lLV5",Lore:["§7§lTroll!"]},BlockEntityTag:{Text4:"{\"text\":\"\"}",Text3:"{\"italic\":true,\"color\":\"white\",\"text\":\"Find The Sign\"}",Text2:"{\"underlined\":true,\"color\":\"dark_red\",\"text\":\"▶Troll Sign◀\"}",id:"minecraft:sign",Text1:"{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"\"},\"text\":\"\"}"},},Damage:0s},Fire:-1s}



execute BisUmTo ~ ~ ~ entitydata @e[type=chest_minecart,c=1] {Invulnerable:1,CustomName:"§f§oFind The Sign"}

blockdata 126 73 11 {x:126,y:73,z:11,Items:[{Slot:13b,id:"minecraft:sign",Count:1b,tag:{HideFlags:16,BlockEntityTag:{Text4:"{\"text\":\"\"}",Text3:"{\"italic\":true,\"color\":\"white\",\"text\":\"Find The Sign\"}",Text2:"{\"underlined\":true,\"color\":\"dark_red\",\"text\":\"▶Prossimo Livello◀\"}",id:"minecraft:sign",Text1:"{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger LEVEL set 9\"},\"text\":\"\"}"},display:{Lore:["§7§lWindows XP §r§7ha smesso di funzionare!"],Name:"§f§o§lFind the Sign §r- §4§lLV8"},CanPlaceOn:["minecraft:stained_glass"]},Damage:0s}],id:"minecraft:chest",Lock:"",CustomName:"§f§oFind The Sign"}