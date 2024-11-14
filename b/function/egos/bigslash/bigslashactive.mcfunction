execute as @n[tag=bigslashanchor] at @s rotated ~ 0 run tp @s ^ ^ ^ facing ^ ^ ^1
execute at @n[tag=bigslashanchor] run tp @s ^ ^ ^ facing ^ ^ ^1
particle dust{color:[0.643,0.016,0.000],scale:2} ~ ~1 ~ 0.4 1 0.4 0 15 force

execute if score @s abilityduration matches 1 run summon marker ~ ~1.5 ~ {Tags:["redslashmarker"]}
data modify entity @n[tag=redslashmarker] Rotation set from entity @s Rotation
execute as @n[tag=redslashmarker] at @s rotated ~-90 ~ run tp @s ~ ~ ~ facing ^ ^ ^1
execute if score @s abilityduration matches 1 run scoreboard players set @n[tag=redslashmarker] redloops 61
execute if score @s abilityduration matches 1 as @n[tag=redslashmarker] run function b:egos/bigslash/bigslashend
execute if score @s abilityduration matches 2 run kill @n[tag=bigslashanchor]
motion @s set 0 0 0