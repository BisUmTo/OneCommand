# ind:src/rng_loop

scoreboard players operation @e[type=area_effect_cloud,tag=indrng,limit=1,sort=random] indrng += ADD indrng
scoreboard players operation ADD indrng *= #2 indrng
execute if score ADD indrng matches 0.. run function ind:src/rng_loop
