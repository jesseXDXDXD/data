execute if score @s ability2cd matches ..0 if entity @a[distance=..75,tag=!adminfrfr] anchored eyes positioned ^ ^ ^ run function b:bosses/zombie/zombie1
execute if score @s ability2cd matches ..0 run scoreboard players set @s ability1cd 100
execute if score @s ability2cd matches ..0 if entity @a[distance=..75,tag=!adminfrfr] anchored eyes positioned ^ ^ ^ run function b:bosses/zombie/zombie2
execute if score @s ability2cd matches ..0 run scoreboard players set @s ability2cd 100