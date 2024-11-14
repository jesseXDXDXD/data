execute if score @s time matches ..40 run tp ~ ~0.075 ~
execute if score @s time matches 40.. run data merge entity @s {Invulnerable:0b,NoAI:0b}
execute if score @s time matches 40.. run tag @s remove zombiesummon