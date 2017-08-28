function redcraft:dinamic_sidebar/armorstand_ko unless @e[tag=REDarm]
function redcraft:dinamic_sidebar/summon_afc unless @e[tag=REDafc]

function redcraft:dinamic_sidebar/show_first if @e[tag=REDupd,score_REDscr_min=1,score_REDscr=1]
function redcraft:dinamic_sidebar/show_second if @e[tag=REDupd,score_REDscr_min=2,score_REDscr=2]
function redcraft:dinamic_sidebar/show_first if @e[tag=REDupd,score_REDscr_min=3,score_REDscr=3]