execute unless score @s ability1cd matches 1.. run summon vex ~ ~1 ~ {DeathLootTable:"f",Team:"player",Health:4f,LifeTicks:200,Tags:["summon","newsummon","spirit","lifesummon"],CustomName:'"spirit"',attributes:[{id:"minecraft:generic.attack_damage",base:4},{id:"minecraft:generic.max_health",base:4}]}
execute unless score @s ability1cd matches 1.. at @e[tag=newsummon] store result score @n[tag=newsummon] ownerid run scoreboard players get @s ownerid
execute unless score @s ability1cd matches 1.. run scoreboard players set @s ability1cd 20
tag @e remove newsummon
execute if score @s time matches 400.. run kill @s
execute rotated ~5 ~ run tp @s ~ ~ ~ facing ^ ^ ^1