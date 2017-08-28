scoreboard players enable @s sidebar
scoreboard players tag @s[score_sidebar_min=-1023] add REDcsb

# Giallo
execute @s[tag=REDcsb,team=REDtae] ~ ~ ~ function redcraft:hidden_sidebar/team/giallo_to_giallono
execute @s[tag=REDcsb,team=REDtb6] ~ ~ ~ function redcraft:hidden_sidebar/team/giallono_to_giallo

# Rosso
execute @s[tag=REDcsb,team=REDtc4] ~ ~ ~ function redcraft:hidden_sidebar/team/rosso_to_rossono
execute @s[tag=REDcsb,team=REDtdc] ~ ~ ~ function redcraft:hidden_sidebar/team/rossono_to_rosso

# Rosa
execute @s[tag=REDcsb,team=REDted] ~ ~ ~ function redcraft:hidden_sidebar/team/rosa_to_rosano
execute @s[tag=REDcsb,team=REDtf5] ~ ~ ~ function redcraft:hidden_sidebar/team/rosano_to_rosa

# Blu
execute @s[tag=REDcsb,team=REDtg1] ~ ~ ~ function redcraft:hidden_sidebar/team/blu_to_bluno
execute @s[tag=REDcsb,team=REDth9] ~ ~ ~ function redcraft:hidden_sidebar/team/bluno_to_blu

# Ciano
execute @s[tag=REDcsb,team=REDtib] ~ ~ ~ function redcraft:hidden_sidebar/team/ciano_to_cianono
execute @s[tag=REDcsb,team=REDtj3] ~ ~ ~ function redcraft:hidden_sidebar/team/cianono_to_ciano

# Verde
execute @s[tag=REDcsb,team=REDtka] ~ ~ ~ function redcraft:hidden_sidebar/team/verde_to_verdeno
execute @s[tag=REDcsb,team=REDtl2] ~ ~ ~ function redcraft:hidden_sidebar/team/verdeno_to_verde

scoreboard players set @s sidebar -1024