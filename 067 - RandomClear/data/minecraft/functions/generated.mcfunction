scoreboard players set DONE rng 0
scoreboard players set @s rng 0
#range(41).map(v=>`execute unless score DONE rng matches 1 store result score @s rng if score RESULT rng matches ${v} run data get entity @s Inventory[${v}].Slot`)
execute unless score DONE rng matches 1 store result score @s rng if score RESULT rng matches 0 run data get entity @s Inventory[0].Slot
execute unless score DONE rng matches 1 store result score @s rng if score RESULT rng matches 1 run data get entity @s Inventory[1].Slot
execute unless score DONE rng matches 1 store result score @s rng if score RESULT rng matches 2 run data get entity @s Inventory[2].Slot
execute unless score DONE rng matches 1 store result score @s rng if score RESULT rng matches 3 run data get entity @s Inventory[3].Slot
execute unless score DONE rng matches 1 store result score @s rng if score RESULT rng matches 4 run data get entity @s Inventory[4].Slot
execute unless score DONE rng matches 1 store result score @s rng if score RESULT rng matches 5 run data get entity @s Inventory[5].Slot
execute unless score DONE rng matches 1 store result score @s rng if score RESULT rng matches 6 run data get entity @s Inventory[6].Slot
execute unless score DONE rng matches 1 store result score @s rng if score RESULT rng matches 7 run data get entity @s Inventory[7].Slot
execute unless score DONE rng matches 1 store result score @s rng if score RESULT rng matches 8 run data get entity @s Inventory[8].Slot
execute unless score DONE rng matches 1 store result score @s rng if score RESULT rng matches 9 run data get entity @s Inventory[9].Slot
execute unless score DONE rng matches 1 store result score @s rng if score RESULT rng matches 10 run data get entity @s Inventory[10].Slot
execute unless score DONE rng matches 1 store result score @s rng if score RESULT rng matches 11 run data get entity @s Inventory[11].Slot
execute unless score DONE rng matches 1 store result score @s rng if score RESULT rng matches 12 run data get entity @s Inventory[12].Slot
execute unless score DONE rng matches 1 store result score @s rng if score RESULT rng matches 13 run data get entity @s Inventory[13].Slot
execute unless score DONE rng matches 1 store result score @s rng if score RESULT rng matches 14 run data get entity @s Inventory[14].Slot
execute unless score DONE rng matches 1 store result score @s rng if score RESULT rng matches 15 run data get entity @s Inventory[15].Slot
execute unless score DONE rng matches 1 store result score @s rng if score RESULT rng matches 16 run data get entity @s Inventory[16].Slot
execute unless score DONE rng matches 1 store result score @s rng if score RESULT rng matches 17 run data get entity @s Inventory[17].Slot
execute unless score DONE rng matches 1 store result score @s rng if score RESULT rng matches 18 run data get entity @s Inventory[18].Slot
execute unless score DONE rng matches 1 store result score @s rng if score RESULT rng matches 19 run data get entity @s Inventory[19].Slot
execute unless score DONE rng matches 1 store result score @s rng if score RESULT rng matches 20 run data get entity @s Inventory[20].Slot
execute unless score DONE rng matches 1 store result score @s rng if score RESULT rng matches 21 run data get entity @s Inventory[21].Slot
execute unless score DONE rng matches 1 store result score @s rng if score RESULT rng matches 22 run data get entity @s Inventory[22].Slot
execute unless score DONE rng matches 1 store result score @s rng if score RESULT rng matches 23 run data get entity @s Inventory[23].Slot
execute unless score DONE rng matches 1 store result score @s rng if score RESULT rng matches 24 run data get entity @s Inventory[24].Slot
execute unless score DONE rng matches 1 store result score @s rng if score RESULT rng matches 25 run data get entity @s Inventory[25].Slot
execute unless score DONE rng matches 1 store result score @s rng if score RESULT rng matches 26 run data get entity @s Inventory[26].Slot
execute unless score DONE rng matches 1 store result score @s rng if score RESULT rng matches 27 run data get entity @s Inventory[27].Slot
execute unless score DONE rng matches 1 store result score @s rng if score RESULT rng matches 28 run data get entity @s Inventory[28].Slot
execute unless score DONE rng matches 1 store result score @s rng if score RESULT rng matches 29 run data get entity @s Inventory[29].Slot
execute unless score DONE rng matches 1 store result score @s rng if score RESULT rng matches 30 run data get entity @s Inventory[30].Slot
execute unless score DONE rng matches 1 store result score @s rng if score RESULT rng matches 31 run data get entity @s Inventory[31].Slot
execute unless score DONE rng matches 1 store result score @s rng if score RESULT rng matches 32 run data get entity @s Inventory[32].Slot
execute unless score DONE rng matches 1 store result score @s rng if score RESULT rng matches 33 run data get entity @s Inventory[33].Slot
execute unless score DONE rng matches 1 store result score @s rng if score RESULT rng matches 34 run data get entity @s Inventory[34].Slot
execute unless score DONE rng matches 1 store result score @s rng if score RESULT rng matches 35 run data get entity @s Inventory[35].Slot
execute unless score DONE rng matches 1 store result score @s rng if score RESULT rng matches 36 run data get entity @s Inventory[36].Slot
execute unless score DONE rng matches 1 store result score @s rng if score RESULT rng matches 37 run data get entity @s Inventory[37].Slot
execute unless score DONE rng matches 1 store result score @s rng if score RESULT rng matches 38 run data get entity @s Inventory[38].Slot
execute unless score DONE rng matches 1 store result score @s rng if score RESULT rng matches 39 run data get entity @s Inventory[39].Slot
execute unless score DONE rng matches 1 store result score @s rng if score RESULT rng matches 40 run data get entity @s Inventory[40].Slot


execute unless score DONE rng matches 1 store success score DONE rng if score @s rng matches 0 run replaceitem entity @s hotbar.0 air
execute unless score DONE rng matches 1 store success score DONE rng if score @s rng matches 1 run replaceitem entity @s hotbar.1 air
execute unless score DONE rng matches 1 store success score DONE rng if score @s rng matches 2 run replaceitem entity @s hotbar.2 air
execute unless score DONE rng matches 1 store success score DONE rng if score @s rng matches 3 run replaceitem entity @s hotbar.3 air
execute unless score DONE rng matches 1 store success score DONE rng if score @s rng matches 4 run replaceitem entity @s hotbar.4 air
execute unless score DONE rng matches 1 store success score DONE rng if score @s rng matches 5 run replaceitem entity @s hotbar.5 air
execute unless score DONE rng matches 1 store success score DONE rng if score @s rng matches 6 run replaceitem entity @s hotbar.6 air
execute unless score DONE rng matches 1 store success score DONE rng if score @s rng matches 7 run replaceitem entity @s hotbar.7 air
execute unless score DONE rng matches 1 store success score DONE rng if score @s rng matches 8 run replaceitem entity @s hotbar.8 air
execute unless score DONE rng matches 1 store success score DONE rng if score @s rng matches 9 run replaceitem entity @s inventory.0 air
execute unless score DONE rng matches 1 store success score DONE rng if score @s rng matches 10 run replaceitem entity @s inventory.1 air
execute unless score DONE rng matches 1 store success score DONE rng if score @s rng matches 11 run replaceitem entity @s inventory.2 air
execute unless score DONE rng matches 1 store success score DONE rng if score @s rng matches 12 run replaceitem entity @s inventory.3 air
execute unless score DONE rng matches 1 store success score DONE rng if score @s rng matches 13 run replaceitem entity @s inventory.4 air
execute unless score DONE rng matches 1 store success score DONE rng if score @s rng matches 14 run replaceitem entity @s inventory.5 air
execute unless score DONE rng matches 1 store success score DONE rng if score @s rng matches 15 run replaceitem entity @s inventory.6 air
execute unless score DONE rng matches 1 store success score DONE rng if score @s rng matches 16 run replaceitem entity @s inventory.7 air
execute unless score DONE rng matches 1 store success score DONE rng if score @s rng matches 17 run replaceitem entity @s inventory.8 air
execute unless score DONE rng matches 1 store success score DONE rng if score @s rng matches 18 run replaceitem entity @s inventory.9 air
execute unless score DONE rng matches 1 store success score DONE rng if score @s rng matches 19 run replaceitem entity @s inventory.10 air
execute unless score DONE rng matches 1 store success score DONE rng if score @s rng matches 20 run replaceitem entity @s inventory.11 air
execute unless score DONE rng matches 1 store success score DONE rng if score @s rng matches 21 run replaceitem entity @s inventory.12 air
execute unless score DONE rng matches 1 store success score DONE rng if score @s rng matches 22 run replaceitem entity @s inventory.13 air
execute unless score DONE rng matches 1 store success score DONE rng if score @s rng matches 23 run replaceitem entity @s inventory.14 air
execute unless score DONE rng matches 1 store success score DONE rng if score @s rng matches 24 run replaceitem entity @s inventory.15 air
execute unless score DONE rng matches 1 store success score DONE rng if score @s rng matches 25 run replaceitem entity @s inventory.16 air
execute unless score DONE rng matches 1 store success score DONE rng if score @s rng matches 26 run replaceitem entity @s inventory.17 air
execute unless score DONE rng matches 1 store success score DONE rng if score @s rng matches 27 run replaceitem entity @s inventory.18 air
execute unless score DONE rng matches 1 store success score DONE rng if score @s rng matches 28 run replaceitem entity @s inventory.19 air
execute unless score DONE rng matches 1 store success score DONE rng if score @s rng matches 29 run replaceitem entity @s inventory.20 air
execute unless score DONE rng matches 1 store success score DONE rng if score @s rng matches 30 run replaceitem entity @s inventory.21 air
execute unless score DONE rng matches 1 store success score DONE rng if score @s rng matches 31 run replaceitem entity @s inventory.22 air
execute unless score DONE rng matches 1 store success score DONE rng if score @s rng matches 32 run replaceitem entity @s inventory.23 air
execute unless score DONE rng matches 1 store success score DONE rng if score @s rng matches 33 run replaceitem entity @s inventory.24 air
execute unless score DONE rng matches 1 store success score DONE rng if score @s rng matches 34 run replaceitem entity @s inventory.25 air
execute unless score DONE rng matches 1 store success score DONE rng if score @s rng matches 35 run replaceitem entity @s inventory.26 air
execute unless score DONE rng matches 1 store success score DONE rng if score @s rng matches 100 run replaceitem entity @s armor.feet air
execute unless score DONE rng matches 1 store success score DONE rng if score @s rng matches 101 run replaceitem entity @s armor.legs air
execute unless score DONE rng matches 1 store success score DONE rng if score @s rng matches 102 run replaceitem entity @s armor.chest air
execute unless score DONE rng matches 1 store success score DONE rng if score @s rng matches 103 run replaceitem entity @s armor.head air
execute unless score DONE rng matches 1 store success score DONE rng if score @s rng matches -106 run replaceitem entity @s weapon.offhand air
