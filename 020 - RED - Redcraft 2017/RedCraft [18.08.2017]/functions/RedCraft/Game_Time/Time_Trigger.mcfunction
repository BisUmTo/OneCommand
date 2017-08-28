execute @s ~ ~ ~ function redcraft:game_time/clock_hover
execute @s[tag=!REDckh] ~ ~ ~ function redcraft:game_time/add_0
execute @s[score_REDp1s_min=60] ~ ~ ~ function redcraft:game_time/add_minute
execute @s[score_REDp1m_min=60] ~ ~ ~ function redcraft:game_time/add_hour
function redcraft:game_time/time_trigger if @s[score_REDp1s_min=60]
function redcraft:game_time/time_trigger if @s[score_REDp1m_min=60]