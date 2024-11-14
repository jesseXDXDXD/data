execute as @e[tag=htp] at @s run function b:bosses/zombie/htp
execute as @e[tag=groundmarker] at @s run particle block{block_state:"minecraft:dirt"} ~ ~ ~ 0.3 0 0.3 1 5 force
execute as @e[tag=zombiesummon] at @s run function b:bosses/zombie/zombiesummon
execute as @e[tag=hth] at @s positioned ~-0.25 ~-0.25 ~-0.25 at @e[team=!enemy,dx=0.5,dz=0.5,dy=0.5] run damage @n[team=!enemy,distance=..0.5] 8 mob_attack by @n[tag=zombieboss]
execute as @e[tag=hth] at @s run rotate @s add 0 1