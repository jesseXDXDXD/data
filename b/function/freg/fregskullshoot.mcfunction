# summon temporary entity "in front of the player", if the player was standing at 0 0 0
execute facing entity @n[team=!antiblagh,tag=!adminfrfr] eyes positioned 0.0 0 0.0 run summon marker ^ ^ ^3 {Tags:["direction"]}

# summon the projectileshotforfunction entity (e.g. sheep, but can also be an arrow/snowball/etc. 
# When using a projectileshotforfunction, you might want to summon it in front of the player so it doesn't hit the player themselves)
# you might want to summon it at the players eyes as well using anchored eyes

summon wither_skeleton ~ ~ ~ {Team:"antiblagh",Health:1f,Tags:["projectileshotforfunction","minifreg"],CustomName:'"mini-freg"',active_effects:[{id:"minecraft:slow_falling",amplifier:1,duration:-1,show_particles:0b},{id:"minecraft:fire_resistance",amplifier:1,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:generic.attack_damage",base:25},{id:"minecraft:generic.max_health",base:1},{id:"minecraft:generic.scale",base:0.5}]}
#summon wither ~ ~ ~ {Team:"antiblagh"}

# data modify entity @n[tag=projectileshotforfunction] Owner set from entity @s UUID

# copy the markers position tag to the sheeps motion tag
data modify entity @n[tag=projectileshotforfunction] Motion set from entity @e[type=marker,tag=direction,limit=1] Pos
execute unless entity @e[tag=direction] run data merge entity @n[tag=projectileshotforfunction] {Motion:[0.0,1.5,0.0]}

# clean up
tag @e[tag=projectileshotforfunction] remove projectileshotforfunction
kill @e[tag=direction]