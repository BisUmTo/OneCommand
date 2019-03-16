# voxuhc:src/death_actions_respawn

spreadplayers 0 0 250 800 false @s[tag=death]
execute @s[tag=death] ~ ~ ~ function voxuhc:src/spawn_actions
effect @s minecraft:poison 9 3 true
say death_actions_respawn
