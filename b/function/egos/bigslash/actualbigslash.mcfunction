scoreboard players set @s abilityduration 100
scoreboard players set @s egocd 1000
scoreboard players set @s egoabilityactive 1
summon marker ~ ~ ~ {Tags:["bigslashanchor"]}
data modify entity @n[tag=bigslashanchor] Rotation set from entity @s Rotation