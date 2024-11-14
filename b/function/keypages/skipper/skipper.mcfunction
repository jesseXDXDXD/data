attribute @s minecraft:generic.scale modifier add skipper -0.5 add_value
attribute @s minecraft:generic.max_health modifier add skipper2 -6 add_value
execute if score @s ability1 matches 1.. unless score @s ability1cd matches 1.. run function b:keypages/skipper/bitey
execute if score @s ability1 matches 1.. unless score @s ability1cd matches 1.. run scoreboard players set @s ability1cd 300

execute if score @s ability2 matches 1.. unless score @s ability2cd matches 1.. run function b:keypages/skipper/skipperturret
execute if score @s ability2 matches 1.. unless score @s ability2cd matches 1.. run scoreboard players set @s ability2cd 300

execute if score @s ability3 matches 1.. unless score @s ability3cd matches 1.. run function b:keypages/skipper/skipperstrike
execute if score @s ability3 matches 1.. unless score @s ability3cd matches 1.. run scoreboard players set @s ability3cd 600

execute if score @s ability4 matches 1.. unless score @s ability4cd matches 1.. run function b:keypages/skipper/nest
execute if score @s ability4 matches 1.. unless score @s ability4cd matches 1.. run scoreboard players set @s ability4cd 1000