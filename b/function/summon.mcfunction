function b:checkforallies
target @s set @n[tag=!ally,tag=!adminfrfr,tag=!notarget,type=!item,type=!minecraft:experience_orb,distance=0.00001..,type=!#minecraft:impact_projectiles,type=!#minecraft:arrows,type=!minecraft:block_display,type=!minecraft:marker]
execute if entity @s[tag=explosivesummon] run function b:random/explosivesummon
tag @e remove ally