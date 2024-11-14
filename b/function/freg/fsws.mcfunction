execute facing entity @n[tag=fregsummoner] eyes rotated ~ 0 run tp ^ ^ ^0.15
execute if entity @e[tag=fregsummoner,distance=..0.1] run tag @s add gone
execute if entity @s[tag=gone] run tp ~ -1000 ~
execute if entity @s[tag=gone] run kill @s