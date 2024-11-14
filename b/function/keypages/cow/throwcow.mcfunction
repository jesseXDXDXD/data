# summon temporary entity "in front of the player", if the player was standing at 0 0 0
execute positioned 0.0 0 0.0 run summon marker ^ ^0.35 ^3 {Tags:["direction"]}

# summon the psff entity (e.g. sheep, but can also be an arrow/snowball/etc. 
# When using a psff, you might want to summon it in front of the player so it doesn't hit the player themselves)
# you might want to summon it at the players eyes as well using anchored eyes
execute anchored eyes positioned ^ ^ ^ run summon cow ^ ^ ^0.25 {DeathLootTable:"f",Health:6f,Tags:["summon","newsummon","psff"],attributes:[{id:"minecraft:generic.attack_damage",base:2},{id:"minecraft:generic.max_health",base:6},{id:"minecraft:generic.safe_fall_distance",base:1000},{id:"minecraft:generic.scale",base:0.4}]}

# copy the markers position tag to the sheeps motion tag
execute at @e[tag=psff] run data modify entity @n[tag=psff,limit=1] Motion set from entity @e[type=marker,tag=direction,limit=1] Pos

# clean up
tag @e[tag=psff] remove psff
kill @e[tag=direction]
function b:random/setowner
#summon wither ~ ~ ~ {Team:"antiblagh"}

# data modify entity @n[tag=newsummon] Owner set from entity @s UUID
tag @e remove newsummon