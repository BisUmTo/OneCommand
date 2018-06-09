scoreboard players set @a[nbt={Sleeping:0b}] REDslp 0
execute as @a[scores={REDslp=1}] run tellraw @a[scores={REDslp=0}] ["",{"selector":"@s","color":"yellow"},{"text":" sta dormendo","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger REDkbd set 1"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Clicca QUI per cacciare dal letto","color":"red"}]}}}]
execute as @a[scores={REDslp=1}] run tellraw @s ["",{"selector":"@s","color":"yellow"},{"text":" sta dormendo","color":"yellow"}]
scoreboard players add @a[nbt={Sleeping:1b}] REDslp 1
execute as @a[nbt={Sleeping:1b}] run scoreboard players set @s REDkbd 0
execute if entity @a[scores={REDkbd=1..}] at @a[nbt={Sleeping:1b}] run summon minecraft:snowball ~ ~.501 ~
execute as @a[scores={REDslp=110..}] run time add 50
execute as @a[scores={REDslp=110}] run weather clear
scoreboard players enable @a REDkbd
