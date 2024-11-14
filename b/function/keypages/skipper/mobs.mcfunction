execute as @e[tag=skipperrocket] at @s unless block ~ ~-0.1 ~ #minecraft:air run function b:keypages/skipper/rocketexplode
execute as @e[tag=skippernest] at @s run function b:keypages/skipper/nesttick
execute as @e[tag=nestvisual] at @s run function b:keypages/skipper/nestvisual
#execute as @e[tag=skipperturret] at @s run function b:keypages/skipper/skipperturrettick