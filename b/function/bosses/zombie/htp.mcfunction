execute as @s[tag=htz] unless block ~ ~-0.1 ~ air run kill @s
scoreboard players add @s time 1
execute if score @s time matches 200.. run kill @s