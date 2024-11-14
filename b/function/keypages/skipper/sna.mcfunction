execute run summon zombie ~ ~ ~ {Team:"player",Health:2f,Tags:["newsummon","skippersummon","summon",""],CustomName:'"NestSkipper"',ArmorItems:[{},{},{},{id:"minecraft:horn_coral",count:1}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],attributes:[{id:"minecraft:generic.attack_damage",base:2},{id:"minecraft:generic.max_health",base:2},{id:"minecraft:generic.scale",base:0.4}]}
execute if score @s up matches 3.. run effect give @n[tag=newsummon] minecraft:slow_falling infinite 0 true
execute run scoreboard players set @s ability1cd 80
function b:random/setowner
tag @e[tag=newsummon] remove newsummon