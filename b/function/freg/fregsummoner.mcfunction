scoreboard players add @s time 1
execute if score @s time matches 1..40 run summon wither_skeleton ~2 ~20 ~ {Glowing:0b,Team:"antiblagh",Invulnerable:1b,NoAI:1b,Tags:["fsws","ffsws"],active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:4,show_particles:0b}]}
particle dust{color:[0.0,0.0,0.0],scale:2} ~ ~1 ~ 0.5 1 0.5 1 30 force
execute as @e[tag=ffsws] run spreadplayers ~ ~ 2 10 false @s
execute as @e[tag=ffsws] run data modify entity @s Pos[1] set from entity @n[tag=fregsummoner] Pos[1]
tag @e remove ffsws
execute if score @s time matches 100.. unless entity @e[tag=fsws,distance=..15] run summon wither_skeleton ~ ~ ~ {Glowing:1b,Team:"antiblagh",Health:500f,Tags:["bossguy","freg"],CustomName:'"freg"',attributes:[{id:"minecraft:generic.attack_damage",base:75},{id:"minecraft:generic.knockback_resistance",base:1},{id:"minecraft:generic.max_health",base:500},{id:"minecraft:generic.movement_speed",base:0.2},{id:"minecraft:generic.scale",base:3},{id:"minecraft:generic.step_height",base:100}]}
execute if score @s time matches 100.. unless entity @e[tag=fsws,distance=..15] run particle dust{color:[0.0,0.0,0.0],scale:4} ~ ~5 ~ 1.5 4 1.5 0 500 force
execute if score @s time matches 100.. unless entity @e[tag=fsws,distance=..15] run kill @s