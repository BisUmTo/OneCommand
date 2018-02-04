gamerule commandBlockOutput false
gamerule logAdminCommands false
gamerule naturalRegeneration false

scoreboard objectives add 035dth stat.timeSinceDeath

defaultgamemode 0
difficulty 3

gamemode 0 @s
clear @s

title @s title {"text":""}
title @s subtitle {"text":"HalfHeart Hardcore Challenge","color":"dark_red"}
playsound minecraft:ui.toast.challenge_complete master @s
tellraw @s ["",{"text":"\n\n'HalfHeart Hardcore Challenge' [1.12.X] ","color":"gold","bold":true},{"text":"by ","color":"none","bold":false},{"text":"BisUmTo","color":"red","bold":true},{"text":"\n https://youtube.com/BisUmTo\n\n","color":"gold","clickEvent":{"action":"open_url","value":"https:www.youtube.com/c/BisUmTo"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"click to open link ⤴","color":"dark_blue"}]}},"bold":false},{"text":"Credit BisUmTo if you are using this creation.\nDon't re-upload this command: provide my video link!!\n\n","color":"red"}]

scoreboard players tag @a add 035log
