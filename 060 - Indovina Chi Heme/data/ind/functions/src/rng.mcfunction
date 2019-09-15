# ind:src/rng

summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0,Tags:["indrng","indrnd"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0,Tags:["indrng"]}
scoreboard players operation MAX indrng -= MIN indrng
scoreboard players set ADD indrng 1
function ind:src/rng_loop
scoreboard players operation @e[tag=indrnd,limit=1] indrng %= MAX indrng
scoreboard players operation @e[tag=indrnd,limit=1] indrng += MIN indrng
scoreboard players operation RESULT indrng = @e[tag=indrnd,limit=1] indrng
scoreboard players operation MAX indrng += MIN indrng
