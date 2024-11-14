# summon temporary entity "in front of the player", if the player was standing at 0 0 0
execute facing entity @n[team=!enemy,tag=!adminfrfr,tag=!notarget] eyes in minecraft:overworld positioned 0.0 0 0.0 run summon marker ^ ^0.3 ^3 {Tags:["direction"]}

# summon the psff entity (e.g. sheep, but can also be an arrow/snowball/etc. 
# When using a psff, you might want to summon it in front of the player so it doesn't hit the player themselves)
# you might want to summon it at the players eyes as well using anchored eyes

execute anchored eyes run summon zombie ^ ^ ^ {Invulnerable:1b,DeathLootTable:"f",Team:"enemy",PersistenceRequired:1b,Tags:["htz","htp","newsummon","psff"],Passengers:[{id:"minecraft:item_display",Tags:["hth","htp"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.35f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:zombie_head",count:1}}],active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b},{id:"minecraft:poison",amplifier:1,duration:-1,show_particles:1b}],attributes:[{id:"minecraft:generic.attack_damage",base:0},{id:"minecraft:generic.scale",base:0.01}]}
#summon wither ~ ~ ~ {Team:"enemy"}

# data modify entity @n[tag=psff] Owner set from entity @s UUID

# copy the markers position tag to the sheeps motion tag
data modify entity @n[tag=psff] Motion set from entity @e[type=marker,tag=direction,limit=1] Pos

# clean up
tag @e[tag=psff] remove psff
kill @e[tag=direction]