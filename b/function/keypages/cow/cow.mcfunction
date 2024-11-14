execute if score @s ability1 matches 1.. unless score @s ability1cd matches 1.. run function b:keypages/cow/throwcow
execute if score @s ability1 matches 1.. unless score @s ability1cd matches 1.. run scoreboard players set @s ability1cd 200

execute if score @s ability2 matches 1.. unless score @s ability2cd matches 1.. run function b:keypages/cow/cowmissle
execute if score @s ability2 matches 1.. unless score @s ability2cd matches 1.. run scoreboard players set @s ability2cd 300

execute if score @s ability3 matches 1.. unless score @s ability3cd matches 1.. run function b:keypages/cow/cowsummon
execute if score @s ability3 matches 1.. unless score @s ability3cd matches 1.. run scoreboard players set @s ability3cd 500

execute if score @s ability4 matches 1.. unless score @s ability4cd matches 1.. run function b:keypages/cow/cow4
execute if score @s ability4 matches 1.. unless score @s ability4cd matches 1.. run scoreboard players set @s ability4cd 800

#execute if score @s ability4 matches 1.. unless score @s ability4cd matches 1.. run function b:keypages/cow/purple
#execute if score @s ability4 matches 1.. unless score @s ability4cd matches 1.. run scoreboard players set @s ability4cd 10

function b:keypages/cow/passive