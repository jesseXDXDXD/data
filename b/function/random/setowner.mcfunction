execute unless entity @s[tag=summon] store result score @n[tag=newsummon,tag=!notnewsummon] ownerid run scoreboard players get @s id
execute if entity @s[tag=summon] store result score @n[tag=newsummon,tag=!notnewsummon] ownerid run scoreboard players get @s ownerid
tag @n[tag=newsummon,tag=!notnewsummon] add notnewsummon
tag @n[tag=newsummon] remove newsummon
execute if entity @e[tag=newsummon] run function b:random/setowner