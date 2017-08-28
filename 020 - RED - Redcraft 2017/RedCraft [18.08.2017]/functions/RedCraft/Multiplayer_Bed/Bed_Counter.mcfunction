execute @s[score_REDslp_min=1,score_REDslp=1] ~ ~ ~ tellraw @a ["",{"selector":"@s","color":"yellow"},{"text":" sta dormendo","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger REDkbd set 1"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Clicca per cacciare","color":"red"}]}}}]
scoreboard players add @s REDslp 1 {Sleeping:1b}
scoreboard players set @s REDslp 0 {Sleeping:0b}
execute @s[score_REDslp=0] ~ ~ ~ trigger REDkbd set 0
execute @s ~ ~ ~ function redcraft:multiplayer_bed/kick_bed if @a[score_REDkbd_min=1]
execute @p[score_REDslp_min=110] ~ ~ ~ time add 100
execute @p[score_REDslp_min=230] ~ ~ ~ weather clear
scoreboard players enable @a REDkbd