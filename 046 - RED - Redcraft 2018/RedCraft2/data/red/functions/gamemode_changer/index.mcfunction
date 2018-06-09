execute as @s[x_rotation=89.99..] run function red:gamemode_changer/change
execute as @s[x_rotation=..89.98] run title @s actionbar {"text":"Non puoi cambare la tua modalità di gioco in questo momento.","color":"dark_red"}
scoreboard players set @s gm -1
