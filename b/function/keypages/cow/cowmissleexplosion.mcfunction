execute positioned ~-1 ~-1 ~-1 at @e[dx=2,dz=2,dy=2,tag=!ally] run damage @n[tag=!ally] 4 explosion by @s from @s
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force
tag @e remove ally
kill @s