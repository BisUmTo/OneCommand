gamerule commandBlockOutput false
gamerule doLimitedCrafting true

scoreboard objectives add 033hlt health ❤
scoreboard objectives add 033lvl dummy Current Level
scoreboard objectives add 033trg trigger Player Interaction
scoreboard objectives add 033dts dummy Death Counter
scoreboard objectives add 033dth deathCount Is Death?
scoreboard objectives add 033frt dummy Fire Time

gamerule gameLoopFunction dtd:index

tellraw @a ["",{"text":"\n\n'Don't Take Damage' [17w47b] ","color":"gold","bold":true},{"text":"by ","color":"none","bold":false},{"text":"BisUmTo","color":"red","bold":true},{"text":"\n http://youtube.com/BisUmTo\n\n","color":"gold","clickEvent":{"action":"open_url","value":"https:www.youtube.com/c/BisUmTo"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"click to open link ⤴","color":"dark_blue"}]}},"bold":false},{"text":"Credit BisUmTo if you are using this creation.\nDon't re-upload this command: provide my video link!!\n\n","color":"red"}]
