scoreboard players tag @s remove REDclk
scoreboard players tag @s add REDclk {SelectedItem:{id:"minecraft:clock"}}
title @s[tag=REDclk] actionbar ["",{"text":"Ciao "},{"selector":"@s"},{"text":", hai giocato "},{"score":{"name":"@s","objective":"REDp1h"}},{"text":"h "},{"score":{"name":"@s","objective":"REDp1m"}},{"text":"m "},{"score":{"name":"@s","objective":"REDp1s"}},{"text":"s"}]