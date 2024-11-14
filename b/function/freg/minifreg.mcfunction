scoreboard players add @s time 1
execute if score @s time matches 400.. run summon creeper ~ ~ ~ {Invulnerable:1b,Team:"antiblagh",ExplosionRadius:0b,Fuse:0,CustomName:'"mini freg"',active_effects:[{id:"minecraft:wither",amplifier:1,duration:40,show_particles:1b}]}
execute if score @s time matches 400.. run kill @s

execute if entity @s[tag=!initiated] run scoreboard players set @s ability2cd 100

execute if score @s ability2cd matches ..0 anchored eyes positioned ^ ^ ^ facing entity @n[team=!antiblagh,tag=!adminfrfr] eyes run function b:random/launchself
execute if score @s ability2cd matches ..0 run scoreboard players set @s ability2cd 100