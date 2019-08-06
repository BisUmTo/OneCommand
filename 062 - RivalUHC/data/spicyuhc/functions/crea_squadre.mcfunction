# spicyuhc:crea_squadre

tag @a[limit=1,sort=random,tag=REC,tag=!t1,tag=!t2] add t1
tag @a[limit=1,sort=random,tag=REC,tag=!t1,tag=!t2] add t2
tag @a[limit=1,sort=random,tag=REC,tag=!t1,tag=!t2] add t1
tag @a[limit=1,sort=random,tag=REC,tag=!t1,tag=!t2] add t2
tag @a[limit=1,sort=random,tag=REC,tag=!t1,tag=!t2] add t1
tag @a[limit=1,sort=random,tag=REC,tag=!t1,tag=!t2] add t2
tag @a[limit=1,sort=random,tag=REC,tag=!t1,tag=!t2] add t1
tag @a[limit=1,sort=random,tag=REC,tag=!t1,tag=!t2] add t2
tag @a[limit=1,sort=random,tag=REC,tag=!t1,tag=!t2] add t1
tag @a[limit=1,sort=random,tag=REC,tag=!t1,tag=!t2] add t2

tag @a[limit=1,sort=random,tag=!REC,tag=!t1,tag=!t2] add t1
tag @a[limit=1,sort=random,tag=!REC,tag=!t1,tag=!t2] add t2
tag @a[limit=1,sort=random,tag=!REC,tag=!t1,tag=!t2] add t1
tag @a[limit=1,sort=random,tag=!REC,tag=!t1,tag=!t2] add t2
tag @a[limit=1,sort=random,tag=!REC,tag=!t1,tag=!t2] add t1
tag @a[limit=1,sort=random,tag=!REC,tag=!t1,tag=!t2] add t2
tag @a[limit=1,sort=random,tag=!REC,tag=!t1,tag=!t2] add t1
tag @a[limit=1,sort=random,tag=!REC,tag=!t1,tag=!t2] add t2
tag @a[limit=1,sort=random,tag=!REC,tag=!t1,tag=!t2] add t1
tag @a[limit=1,sort=random,tag=!REC,tag=!t1,tag=!t2] add t2

execute store result score t1 tmp if entity @a[tag=t1]
execute store result score t2 tmp if entity @a[tag=t2]

scoreboard players operation dif tmp = t1 tmp
scoreboard players operation dif tmp -= t2 tmp

execute if score dif tmp matches 2 run tag @a[limit=1,sort=random,tag=!REC,tag=t1] add t2
tag @a[tag=t1,tag=t2] remove t1
