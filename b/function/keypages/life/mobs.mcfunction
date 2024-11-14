#execute as @e[tag=turret1] at @s at @p[scores={keypage=1}] run tp @s ~1 ~3 ~
#execute as @e[tag=turret2] at @s at @p[scores={keypage=1}] run tp @s ~-1 ~3 ~
#execute as @e[tag=turret3] at @s at @p[scores={keypage=1}] run tp @s ~ ~3 ~1
#execute as @e[tag=turret4] at @s at @p[scores={keypage=1}] run tp @s ~ ~3 ~-1

execute as @e[tag=turretguy] at @s run function b:keypages/life/turretguy
execute as @e[tag=lifetotem] at @s run function b:keypages/life/totemtick