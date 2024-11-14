#execute if biome ~ ~ ~ b:spicebush run tag @s add sbiome
#execute if entity @s[type=zombie,tag=sbiome,tag=!stbf] run summon zombie ~ ~ ~ {Silent:1b,Health:20f,IsBaby:0b,Tags:["initiated","stbf"],CustomName:'"Soon-to-bloom Flower"',ArmorItems:[{},{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":16766751}},{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":16766751}},{id:"minecraft:horn_coral",count:1}],ArmorDropChances:[0.085F,0.000F,0.000F,0.000F],active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:generic.attack_damage",base:0},{id:"minecraft:generic.knockback_resistance",base:1},{id:"minecraft:generic.max_health",base:20},{id:"minecraft:generic.movement_speed",base:0},{id:"minecraft:zombie.spawn_reinforcements",base:0}]}
#execute if entity @s[type=zombie,tag=sbiome,tag=!stbf] run tp @s ~ -1000 ~
#execute if entity @s[type=zombie,tag=sbiome,tag=!stbf] run kill @s
#execute if entity @s[type=zombie,tag=sbiome,tag=!stbf] run kill @s
#execute if entity @s[type=zombie,tag=sbiome,tag=!stbf] run kill @s
#execute if entity @s[type=zombie,tag=sbiome,tag=!stbf] run kill @s
execute if entity @s[type=player] run function b:random/ip
kill @s[type=minecraft:experience_orb]

execute store result score @s id run scoreboard players add id id 1

tag @s add initiated
tag @s add initiatedperm