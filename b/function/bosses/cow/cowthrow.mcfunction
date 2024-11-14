# summon temporary entity "in front of the player", if the player was standing at 0 0 0
execute facing entity @n[team=!enemy,tag=!adminfrfr] eyes in minecraft:overworld positioned 0.0 0 0.0 run summon marker ^ ^2 ^0.5 {Tags:["direction"]}

# summon the projectileshotforfunction entity (e.g. sheep, but can also be an arrow/snowball/etc. 
# When using a projectileshotforfunction, you might want to summon it in front of the player so it doesn't hit the player themselves)
# you might want to summon it at the players eyes as well using anchored eyes

summon cow ~ ~ ~ {DeathLootTable:"f",Team:"enemy",Health:2f,Tags:["summon","projectileshotforfunction"],CustomName:'"small cow"',attributes:[{id:"minecraft:generic.gravity",base:0.06},{id:"minecraft:generic.max_health",base:2},{id:"minecraft:generic.safe_fall_distance",base:1000},{id:"minecraft:generic.scale",base:0.5}]}
#summon wither ~ ~ ~ {Team:"enemy"}

# data modify entity @n[tag=projectileshotforfunction] Owner set from entity @s UUID

# copy the markers position tag to the sheeps motion tag
data modify entity @n[tag=projectileshotforfunction] Motion set from entity @e[type=marker,tag=direction,limit=1] Pos
execute unless entity @e[tag=direction] run data merge entity @n[tag=projectileshotforfunction] {Motion:[0.0,0.5,0.0]}

# clean up
tag @e[tag=projectileshotforfunction] remove projectileshotforfunction
kill @e[tag=direction]