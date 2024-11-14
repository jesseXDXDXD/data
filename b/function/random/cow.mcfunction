execute as @s[tag=!healthtracker,team=blagh] at @s if entity @e[team=!blagh,distance=..7.5] run ride @s dismount
execute as @s[tag=!healthtracker,team=blagh,tag=!lhasummon] at @s unless entity @e[team=!blagh,distance=..7.5,tag=!adminfrfr] run ride @s mount @n[tag=healthtracker,distance=..4]
execute as @s[tag=!healthtracker,team=blagh,tag=!lhasummon] at @s unless entity @e[team=!blagh,distance=..7.5,tag=!adminfrfr] unless entity @e[tag=healthtracker,distance=..4] run target @s set @n[tag=healthtracker]
execute as @s[tag=!healthtracker,team=blagh] at @s unless entity @e[team=!blagh,distance=..7.5,tag=!adminfrfr] if entity @e[tag=healthtracker,distance=..4] run target @s clear

#effect give @s[tag=!healthtracker] minecraft:speed 2 0 true

execute as @s[tag=lhasummon] at @s facing entity @n[team=!blagh,tag=!adminfrfr] feet run tp ^ ^ ^0.6

#execute as @s[tag=healthtracker] at @s run title @a actionbar {"entity":"@s","nbt":"Health"}
execute as @s[tag=healthtracker,tag=lha] at @s if score @s hp matches 350.. run tag @s remove lha
execute as @s[tag=healthtracker,tag=!lha] at @s if score @s hp matches ..200 run summon cow ~ ~ ~ {Team:"blagh",Health:100f,Tags:["lhasummon"],attributes:[{id:"minecraft:generic.attack_damage",base:10},{id:"minecraft:generic.knockback_resistance",base:1},{id:"minecraft:generic.max_health",base:100},{id:"minecraft:generic.scale",base:1.5}]}
execute as @s[tag=healthtracker,tag=!lha] at @s if score @s hp matches ..200 run summon cow ~ ~ ~ {Team:"blagh",Health:100f,Tags:["lhasummon"],attributes:[{id:"minecraft:generic.attack_damage",base:10},{id:"minecraft:generic.knockback_resistance",base:1},{id:"minecraft:generic.max_health",base:100},{id:"minecraft:generic.scale",base:1.5}]}
execute as @s[tag=healthtracker,tag=!lha] at @s if score @s hp matches ..200 run tag @s add lha
tag @s[tag=healthtracker] add bossguy