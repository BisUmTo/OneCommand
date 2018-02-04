execute @a[tag=!035log] ~ ~ ~ function hhhchallenge:install
scoreboard players tag @a remove 035lse
scoreboard players tag @a[score_035dth_min=1,score_035dth=1] remove 035igm
effect @a[tag=!035igm] minecraft:poison 5 18 true
scoreboard players tag @a[m=0] add 035igm
scoreboard players tag @a add 035air {Inventory:[{Slot:103b}]}
replaceitem entity @a[tag=!035air] slot.armor.head minecraft:structure_void 1 0 {HideFlags:2,AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-19,Operation:0,UUIDLeast:98878,UUIDMost:431064}]}
scoreboard players tag @a remove 035air
scoreboard players tag @a add 035air {Inventory:[{Slot:103b}]}
clear @a minecraft:structure_void
