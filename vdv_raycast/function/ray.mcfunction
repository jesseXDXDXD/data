#Running custom per-step commands.
execute store result score @s random run random value 1..34

execute if score @s random matches 1..10 run particle dust{color:[0.643,0.016,0.000],scale:1.5} ~ ~ ~ 0.2 0.2 0.2 0 1 force
execute if score @s random matches 11..21 run particle dust{color:[0.439,0.012,0.000],scale:1.5} ~ ~ ~ 0.2 0.2 0.2 0 1 force
execute if score @s random matches 22..33 run particle dust{color:[0.549,0.078,0.078],scale:1.5} ~ ~ ~ 0.2 0.2 0.2 0 1 force
execute if score @s random matches 34 run particle dust{color:[0.773,0.714,0.702],scale:2.5} ~ ~ ~ 0 0 0 0 1 force
execute if score @s random matches 34 run particle dust{color:[0.439,0.353,0.000],scale:1.5} ~ ~0.05 ~ 0 0 0 0 1 force

#Check if an entity was detected.

execute if score #hit vdvcasttemp matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[tag=!vdvray,dx=0,sort=nearest] run function vdv_raycast:check_hit_entity
scoreboard players add #distance vdvcasttemp 1

#Advance forward and run the ray again if no entity and/or block was found.

execute if score #hit vdvcasttemp matches 0 if score #distance vdvcasttemp matches ..47 positioned ^ ^ ^0.15 run function vdv_raycast:ray