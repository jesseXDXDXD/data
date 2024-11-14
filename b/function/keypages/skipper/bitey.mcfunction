execute at @e[team=!player,type=!marker,distance=..15] run summon evoker_fangs ~ ~ ~ {Tags:["newsummon"]}
execute at @e[team=!player,type=!marker,distance=..15] run summon evoker_fangs ~1.5 ~ ~ {Tags:["newsummon"]}
execute at @e[team=!player,type=!marker,distance=..15] run summon evoker_fangs ~-1.5 ~ ~ {Tags:["newsummon"]}
execute at @e[team=!player,type=!marker,distance=..15] run summon evoker_fangs ~ ~ ~1.5 {Tags:["newsummon"]}
execute at @e[team=!player,type=!marker,distance=..15] run summon evoker_fangs ~ ~ ~-1.5 {Tags:["newsummon"]}
execute at @e[tag=newsummon] run data modify entity @n[tag=newsummon] Owner set from entity @s UUID
function b:random/setowner
tag @e remove newsummon