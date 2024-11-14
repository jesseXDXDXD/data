execute store result score @s hotbar run hotbar @s get
execute if score @s hotbar matches 4 run scoreboard players set @s ability1 1
execute if score @s hotbar matches 5 run scoreboard players set @s ability2 1
execute if score @s hotbar matches 6 run scoreboard players set @s ability3 1
execute if score @s hotbar matches 7 run scoreboard players set @s ability4 1
execute if score @s hotbar matches 8 run scoreboard players set @s egoability 1
execute if items entity @s weapon.mainhand minecraft:nether_star[minecraft:custom_data={essence:yeah}] run function b:random/essence
advancement revoke @s only b:ability