summon armor_stand ~ ~-1.7 ~.25 {Tags:["REDgrv"],NoGravity:1b,Invisible:1,Invulnerable:1,ArmorItems:[{},{},{},{id:"minecraft:sign",Count:1b}],DisabledSlots:2039583}
summon armor_stand ~ ~-1.7 ~ {Tags:["REDgrv"],NoGravity:1b,Invisible:1,Invulnerable:1,ArmorItems:[{},{},{},{id:"minecraft:coarse_dirt",Count:1b}],DisabledSlots:2039583}
summon armor_stand ~ ~-1.7 ~-.625 {Tags:["REDgr1","REDgrv"],NoGravity:1b,Invisible:1,Invulnerable:1,ArmorItems:[{},{},{},{id:"minecraft:coarse_dirt",Count:1b}],DisabledSlots:2039583}
summon armor_stand ~ ~-1.1 ~.15 {Tags:["REDgrv"],NoGravity:1b,Invisible:1,Invulnerable:1,ArmorItems:[{},{},{},{id:"minecraft:cobblestone_wall",Count:1b}],DisabledSlots:2039583,Rotation:[90f,0f]}
execute at @e[tag=REDgr1] as @e[type=item,distance=..4,tag=!REDgri] run data merge entity @s {PickupDelay:32767s,Age:-32768s,NoGravity:1b,Motion:[0.0,0.0,0.0],Invulnerable:1,Tags:[REDgri]}
