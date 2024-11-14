execute if score @s ability1 matches 1.. unless score @s ability1cd matches 1.. run function b:keypages/life/cow
execute if score @s ability1 matches 1.. unless score @s ability1cd matches 1.. run scoreboard players set @s ability1cd 200

execute if score @s ability2 matches 1.. unless score @s ability2cd matches 1.. run function b:keypages/life/turrets
execute if score @s ability2 matches 1.. unless score @s ability2cd matches 1.. run scoreboard players set @s ability2cd 300

execute if score @s ability3 matches 1.. unless score @s ability3cd matches 1.. run function b:keypages/life/fox
execute if score @s ability3 matches 1.. unless score @s ability3cd matches 1.. run scoreboard players set @s ability3cd 500

execute if score @s ability4 matches 1.. unless score @s ability4cd matches 1.. run function b:keypages/life/totem
execute if score @s ability4 matches 1.. unless score @s ability4cd matches 1.. run scoreboard players set @s ability4cd 800

#execute if score @s ability4 matches 1.. unless score @s ability4cd matches 1.. run function b:keypages/life/purple
#execute if score @s ability4 matches 1.. unless score @s ability4cd matches 1.. run scoreboard players set @s ability4cd 10

function b:keypages/life/passive