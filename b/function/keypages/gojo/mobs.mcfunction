execute as @e[tag=purple] at @s run particle dust{color:[0.710,0.271,0.812],scale:2} ~ ~ ~ 1 1 1 0 50 force
execute as @e[tag=purple] at @s run particle dust{color:[0.882,0.733,0.878],scale:2} ~ ~ ~ 1 1 1 0 50 force
execute as @e[tag=purple] at @s run particle dust{color:[0.804,0.439,0.859],scale:2} ~ ~ ~ 1 1 1 0 50 force
execute as @e[tag=purple] at @s run particle dust{color:[0.275,0.196,0.722],scale:2} ~ ~ ~ 1 1 1 0 50 force
execute as @e[tag=purple] at @s run scoreboard players add @s time 1
execute as @e[tag=purple] at @s if score @s time matches 100.. run kill @s
execute as @e[tag=purple] at @s run tp ^ ^ ^1
execute as @e[tag=purple] at @s positioned ~-1 ~-1 ~-1 at @e[dx=2,dz=2,dy=2,team=!player] run damage @n[team=!player] 25 magic by @s from @s


execute as @e[tag=red] at @s run scoreboard players add @s time 1
execute as @e[tag=red] at @s if score @s time matches 40.. run kill @s
execute as @e[tag=red] at @s run tp ^ ^ ^0.5
execute as @e[tag=red] at @s run particle dust{color:[0.886,0.075,0.278],scale:4} ~ ~ ~ 0 0 0 0 1 force
execute as @e[tag=red] at @s positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[dx=1,dz=1,dy=1,team=!player] run function b:keypages/gojo/redexplosion
execute as @e[tag=red] at @s run tp ^ ^ ^0.5
execute as @e[tag=red] at @s run particle dust{color:[0.886,0.075,0.278],scale:4} ~ ~ ~ 0 0 0 0 1 force
execute as @e[tag=red] at @s positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[dx=1,dz=1,dy=1,team=!player] run function b:keypages/gojo/redexplosion
execute as @e[tag=red] at @s run tp ^ ^ ^0.5
execute as @e[tag=red] at @s run particle dust{color:[0.886,0.075,0.278],scale:4} ~ ~ ~ 0 0 0 0 1 force
execute as @e[tag=red] at @s positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[dx=1,dz=1,dy=1,team=!player] run function b:keypages/gojo/redexplosion
execute as @e[tag=red] at @s run tp ^ ^ ^0.5
execute as @e[tag=red] at @s run particle dust{color:[0.886,0.075,0.278],scale:4} ~ ~ ~ 0 0 0 0 1 force
execute as @e[tag=red] at @s positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[dx=1,dz=1,dy=1,team=!player] run function b:keypages/gojo/redexplosion
execute as @e[tag=red] at @s run tp ^ ^ ^0.5
execute as @e[tag=red] at @s run particle dust{color:[0.886,0.075,0.278],scale:4} ~ ~ ~ 0 0 0 0 1 force
execute as @e[tag=red] at @s positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[dx=1,dz=1,dy=1,team=!player] run function b:keypages/gojo/redexplosion
execute as @e[tag=red] at @s run particle dust{color:[0.886,0.075,0.278],scale:4} ~ ~ ~ 0 0 0 0 1 force

execute as @e[tag=blue] at @s run function b:keypages/gojo/bluetick