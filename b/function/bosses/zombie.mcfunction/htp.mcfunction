execute unless block ~ ~-0.1 ~ air run kill @s
execute on vehicle on passengers run tag @s add safe
execute unless entity @s[tag=safe] run kill @s
tag @s remove safe