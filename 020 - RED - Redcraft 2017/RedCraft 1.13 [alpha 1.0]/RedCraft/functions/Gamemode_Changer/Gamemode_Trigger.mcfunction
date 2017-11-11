# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

scoreboard players enable @s gm
title @s[score_gm_min=0,rxm=-90,rx=88] actionbar {"text":"Non puoi cambare la tua modalità di gioco in questo momento.","color":"dark_red"}
gamemode 0 @s[score_gm_min=0,score_gm=0,rxm=89,rx=90]
gamemode 1 @s[score_gm_min=1,score_gm=1,tag=Admin,rxm=89,rx=90]
title @s[score_gm_min=1,score_gm=1,rxm=89,rx=90,tag=!Admin] actionbar {"text":"Non puoi cambiare la tua modalità di gioco in creativa.","color":"dark_red"}
gamemode 2 @s[score_gm_min=2,score_gm=2,rxm=89,rx=90]
gamemode 3 @s[score_gm_min=3,score_gm=3,rxm=89,rx=90]
scoreboard players set @s[score_gm_min=0] gm -1
