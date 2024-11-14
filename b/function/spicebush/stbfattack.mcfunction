team join spicebush
scoreboard players add @s time 1
execute if score @s time matches 1..20 run particle dust{color:[0.937,0.780,0.141],scale:1} ~ ~1 ~ 0.5 1 0.5 0 5 force
execute if score @s time matches 20 positioned ~-0.2 ~ ~-0.2 at @e[dx=0.4,dz=1,dy=0.4,tag=!spicebush,tag=!stbf,tag=!stbfattack] run damage @n[tag=!spicebush,tag=!stbf,tag=!stbfattack] 4 minecraft:indirect_magic by @n[tag=stbf] from @n[tag=stbf]
execute if score @s time matches 20 run particle dust{color:[0.937,0.780,0.141],scale:2} ~ ~1 ~ 0.5 1 0.5 1 30 force
execute if score @s time matches 20.. run kill @s