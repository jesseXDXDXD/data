tag @s add ally
execute at @e[distance=..50] if score @n id = @s ownerid run tag @n add ally
execute at @e[distance=..50] if score @n ownerid = @s ownerid run tag @n add ally
execute at @e[distance=..50] if score @n ownerid = @s id run tag @n add ally