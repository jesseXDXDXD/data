summon slime ~ ~ ~ {DeathLootTable:"f",Team:"player",NoAI:1b,Health:20f,Size:0,Tags:["skippernest","prioritytarget","newsummon","summon","skippersummon"],Passengers:[{id:"minecraft:block_display",Tags:["nestvisual","notarget","newsummon"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-1f,-0.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:bee_nest"}}],active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:generic.max_health",base:20},{id:"minecraft:generic.scale",base:2}]}
execute as @e[tag=newsummon,tag=skippernest] at @s align xyz run tp @s ~0.5 ~ ~0.5
function b:random/setowner

scoreboard players set @e[tag=newsummon] ability1cd 60
tag @e remove newsummon
