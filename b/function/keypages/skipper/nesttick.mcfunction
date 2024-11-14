execute align xyz run tp @s ~0.5 ~ ~0.5
execute at @e[tag=skippernest,distance=..0.2] unless score @n[tag=skippernest] id = @s id run scoreboard players add @s up 1
execute at @e[tag=skippernest,distance=..0.2] unless score @n[tag=skippernest] id = @s id run tp @s ~ ~1 ~
tag @s add nodecay
execute if score @s time matches 1800.. run kill @s
execute unless score @s ability1cd matches 1.. run function b:keypages/skipper/sna