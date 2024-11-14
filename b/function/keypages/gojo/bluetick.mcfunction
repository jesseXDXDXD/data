execute run scoreboard players add @s time 1
execute if score @s time matches 200.. run kill @s
execute unless score @s time matches 20.. run tp ^ ^ ^0.1
execute run particle dust{color:[0.078,0.078,0.859],scale:1.5} ~ ~ ~ 1 1 1 0 10 force
execute facing entity @n[team=!player,type=!marker,type=!#minecraft:impact_projectiles] feet run function vdv_raycast:start_ray