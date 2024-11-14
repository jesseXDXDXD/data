execute as @s at @s rotated ~3 ~ run tp @s ~ ~ ~ facing ^ ^ ^1
execute as @s at @s anchored eyes positioned ^ ^-0.5 ^ anchored feet rotated ~ 0 run function vdv_raycast:start_ray
scoreboard players remove @s redloops 1
execute if score @s redloops matches 1.. run function b:egos/bigslash/bigslashend
execute if score @s redloops matches ..0 run kill @s