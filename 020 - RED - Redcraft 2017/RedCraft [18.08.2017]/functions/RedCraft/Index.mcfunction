#               •• RedCraft 2017 ••
#              • Powered by BisUmTo •
#          • http://youtube.com/BisUmTo •


#                  • Benvenuto •
execute @a[tag=!REDent] ~ ~ ~ function redcraft:entry/welcome 

#               • Sidebar Dinamica •
function redcraft:dinamic_sidebar/sidebar_timer
execute @a ~ ~ ~ function redcraft:hidden_sidebar/sidebar_trigger
scoreboard players reset @e[team=REDtsc]

#                • Timer di Gioco •
execute @a ~ ~ ~ function redcraft:game_time/time_trigger

#           • Letto in multigiocatore •
execute @a[score_REDslp_min=1] ~ ~ ~ function redcraft:multiplayer_bed/bed_counter

#              • Gamemode Switcher •
execute @a[team=!REDtsc] ~ ~ ~ function redcraft:gamemode_changer/gamemode_trigger

#                  • Skull Drop •
execute @a[score_REDdth_min=1] ~ ~ ~ function redcraft:skull_drop/skull_trigger

#              • Dragon Egg Respawn •
function redcraft:dragon_egg_respawn/spawn_egg_trigger

#              • Prove Settimanali •
function redcraft:prove_settimanali/prova_trigger



#        • Come installare questa Function •
# Per avviare la presente funzione copiare le cartelle "functions", "advancements"
# e "loot_table" di questo .zip in "saves/WORLD/data". 
# Entrare in game e fare i seguenti comandi:
# /reload
# /gamerule commandBlockOutput false
# /gamerule gameLoopFunction redcraft:index
# 
# Nella console del gioco apparirà un messaggio al secondo per ogni player.
# Per rimmuovere questo spam fare il comando:
# /gamerule logAdminCommands false