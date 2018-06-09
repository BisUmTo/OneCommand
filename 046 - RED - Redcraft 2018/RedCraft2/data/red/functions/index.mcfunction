execute if entity @a[nbt={Sleeping:1b}] run function red:multiplayer_bed/index
execute unless entity @a[nbt={Sleeping:1b}] run scoreboard players reset @a REDkbd   

scoreboard players enable @a gm
execute as @a[scores={gm=0..}] run function red:gamemode_changer/index

function red:grave/index
