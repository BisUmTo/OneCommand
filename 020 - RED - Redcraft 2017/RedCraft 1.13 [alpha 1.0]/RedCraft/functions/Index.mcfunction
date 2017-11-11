#               •• RedCraft 2017 ••
#              • Powered by BisUmTo •
#          • http://youtube.com/BisUmTo 

# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.


#                  • Benvenuto •
execute @a[tag=!REDent] ~ ~ ~ function redcraft:entry/welcome 

#           • Letto in multigiocatore •
execute @a[score_REDslp_min=1] ~ ~ ~ function redcraft:multiplayer_bed/bed_counter

#              • Gamemode Switcher •
execute @a[team=!REDtsc] ~ ~ ~ function redcraft:gamemode_changer/gamemode_trigger

#              • Prove Settimanali •
function redcraft:prove_settimanali/prova_trigger



#        • Come installare questa Function •
# Per far funzionare il seguente data_pack, salvarlo in in "saves/WORLD/packs/". 
# Entrare in game e fare i seguenti comandi:
# /reload
# /function redcraft:install

# Nella console del gioco appariranno alcuni messaggi.
# Per rimmuovere questo spam fare il comando:
# /gamerule logAdminCommands false
