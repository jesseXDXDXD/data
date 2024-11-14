tag @a[tag=!notingame] add ingame
execute as @e[tag=freg] at @s run function b:freg/freg
execute as @e[tag=summon,team=!enemy,team=!player,team=!blagh,team=!antiblagh,team=!spicebush] at @s run function b:summon
execute as @e[type=item] at @s run function b:items

execute as @e[tag=minifreg] at @s run function b:freg/minifreg
scoreboard players reset minifregcounter counter
execute as @e[tag=minifreg] at @s run scoreboard players add minifregcounter counter 1
execute if score minifregcounter counter matches 50.. run scoreboard players set @e[limit=1,sort=random,tag=minifreg] time 600

execute as @e[tag=fregsummoner] at @s run function b:freg/fregsummoner
execute as @e[tag=fsws] at @s run function b:freg/fsws

execute as @e[tag=bossspawner] at @s run function b:random/bossspawner

execute as @e[tag=stbf] at @s run function b:spicebush/stbf
execute as @e[tag=stbfattack] at @s run function b:spicebush/stbfattack

execute as @e[type=cow] at @s run function b:random/cow

execute as @e[tag=fregwitherskull] at @s run data merge entity @s {Air:0}
execute as @e[tag=fregwitherskull] at @s run data merge entity @s {Air:1}

function b:commandblockstuff
function b:abilityloop
function b:bosses
scoreboard players reset spiritcounter counter
execute as @e[tag=spirit] at @s run scoreboard players add spiritcounter counter 1

execute as @e[tag=!initiated] at @s run function b:initiate
#team join player @a[tag=ingame,tag=!noteamchange]
team join enemy @e[type=!player,team=!blagh,team=!antiblagh,team=!spicebush,team=!player,tag=!summon,tag=!noteam]
team leave @a[tag=!ingame,tag=!noteamchange]
effect give @a[tag=!ingame] weakness 1 100
scoreboard players add @e[tag=summon] time 1
execute as @e[tag=summon,tag=!nodecay] if score @s time matches 800.. run kill @s
#execute as @e[tag=explode] at @s run summon creeper ~ ~ ~ {Fuse:0,CustomName:'{"italic":false,"text":"Explosion"}'}
#execute as @e[tag=explode,type=!player] at @s run kill @s
#execute as @e[tag=explode] at @s run tag @s remove explode
execute as steve at @s run trigger egoability
execute as steve at @s run trigger ability4
execute as steve at @s run trigger ability3
execute as steve at @s run trigger ability2
execute as steve at @s run trigger ability1
execute as steve at @s facing entity @n[team=!player] eyes run tp @s ~ ~ ~ facing ^ ^ ^1

execute as @e[type=!minecraft:player,tag=!summon,team=!blagh,team=!antiblagh,team=!spicebush,team=!player,team=!enemy] at @s unless entity @e[tag=prioritytarget,distance=..3,tag=!adminfrfr,tag=!notarget,type=!item,type=!minecraft:experience_orb,type=!#minecraft:impact_projectiles,type=!#minecraft:arrows,type=!minecraft:block_display,type=!minecraft:marker] run target @s set @n[tag=!adminfrfr,tag=!notarget,type=!item,type=!minecraft:experience_orb,distance=0.00001..,type=!#minecraft:impact_projectiles,type=!#minecraft:arrows,type=!minecraft:block_display,type=!minecraft:marker]
execute as @e[type=!minecraft:player,team=player] at @s unless entity @e[tag=prioritytarget,distance=..3,tag=!adminfrfr,tag=!notarget,type=!item,type=!minecraft:experience_orb,type=!#minecraft:impact_projectiles,type=!#minecraft:arrows,type=!minecraft:block_display,type=!minecraft:marker,team=!player] run target @s set @n[tag=!adminfrfr,tag=!notarget,type=!item,type=!minecraft:experience_orb,distance=0.00001..,type=!#minecraft:impact_projectiles,type=!#minecraft:arrows,type=!minecraft:block_display,type=!minecraft:marker,team=!player]
execute as @e[type=!minecraft:player,tag=!summon,team=blagh] at @s unless entity @e[tag=prioritytarget,distance=..3,tag=!adminfrfr,tag=!notarget,type=!item,type=!minecraft:experience_orb,type=!#minecraft:impact_projectiles,type=!#minecraft:arrows,type=!minecraft:block_display,type=!minecraft:marker,team=!blagh] run target @s set @n[tag=!adminfrfr,tag=!notarget,type=!item,type=!minecraft:experience_orb,distance=0.00001..,type=!#minecraft:impact_projectiles,type=!#minecraft:arrows,type=!minecraft:block_display,type=!minecraft:marker,team=!blagh]
execute as @e[type=!minecraft:player,tag=!summon,team=spicebush] at @s unless entity @e[tag=prioritytarget,distance=..3,tag=!adminfrfr,tag=!notarget,type=!item,type=!minecraft:experience_orb,type=!#minecraft:impact_projectiles,type=!#minecraft:arrows,type=!minecraft:block_display,type=!minecraft:marker,team=!spicebush] run target @s set @n[tag=!adminfrfr,tag=!notarget,type=!item,type=!minecraft:experience_orb,distance=0.00001..,type=!#minecraft:impact_projectiles,type=!#minecraft:arrows,type=!minecraft:block_display,type=!minecraft:marker,team=!spicebush]
execute as @e[type=!minecraft:player,tag=!summon,team=antiblagh] at @s unless entity @e[tag=prioritytarget,distance=..3,tag=!adminfrfr,tag=!notarget,type=!item,type=!minecraft:experience_orb,type=!#minecraft:impact_projectiles,type=!#minecraft:arrows,type=!minecraft:block_display,type=!minecraft:marker,team=!antiblagh] run target @s set @n[tag=!adminfrfr,tag=!notarget,type=!item,type=!minecraft:experience_orb,distance=0.00001..,type=!#minecraft:impact_projectiles,type=!#minecraft:arrows,type=!minecraft:block_display,type=!minecraft:marker,team=!antiblagh]
execute as @e[type=!minecraft:player,team=enemy] at @s unless entity @e[tag=prioritytarget,distance=..3,tag=!adminfrfr,tag=!notarget,type=!item,type=!minecraft:experience_orb,type=!#minecraft:impact_projectiles,type=!#minecraft:arrows,type=!minecraft:block_display,type=!minecraft:marker,team=!enemy] run target @s set @n[tag=!adminfrfr,tag=!notarget,type=!item,type=!minecraft:experience_orb,distance=0.00001..,type=!#minecraft:impact_projectiles,type=!#minecraft:arrows,type=!minecraft:block_display,type=!minecraft:marker,team=!enemy]


execute as @e[type=!minecraft:player,tag=!summon,team=!blagh,team=!antiblagh,team=!spicebush,team=!player,team=!enemy] at @s if entity @e[tag=prioritytarget,distance=..3,tag=!adminfrfr,tag=!notarget,type=!item,type=!minecraft:experience_orb,type=!#minecraft:impact_projectiles,type=!#minecraft:arrows,type=!minecraft:block_display,type=!minecraft:marker] run target @s set @n[tag=!adminfrfr,tag=!notarget,type=!item,type=!minecraft:experience_orb,distance=0.00001..,type=!#minecraft:impact_projectiles,type=!#minecraft:arrows,type=!minecraft:block_display,type=!minecraft:marker,tag=prioritytarget]
execute as @e[type=!minecraft:player,team=player] at @s if entity @e[tag=prioritytarget,distance=..3,tag=!adminfrfr,tag=!notarget,type=!item,type=!minecraft:experience_orb,type=!#minecraft:impact_projectiles,type=!#minecraft:arrows,type=!minecraft:block_display,type=!minecraft:marker,team=!player] run target @s set @n[tag=!adminfrfr,tag=!notarget,type=!item,type=!minecraft:experience_orb,distance=0.00001..,type=!#minecraft:impact_projectiles,type=!#minecraft:arrows,type=!minecraft:block_display,type=!minecraft:marker,team=!player,tag=prioritytarget]
execute as @e[type=!minecraft:player,tag=!summon,team=blagh] at @s if entity @e[tag=prioritytarget,distance=..3,tag=!adminfrfr,tag=!notarget,type=!item,type=!minecraft:experience_orb,type=!#minecraft:impact_projectiles,type=!#minecraft:arrows,type=!minecraft:block_display,type=!minecraft:marker,team=!blagh] run target @s set @n[tag=!adminfrfr,tag=!notarget,type=!item,type=!minecraft:experience_orb,distance=0.00001..,type=!#minecraft:impact_projectiles,type=!#minecraft:arrows,type=!minecraft:block_display,type=!minecraft:marker,team=!blagh,tag=prioritytarget]
execute as @e[type=!minecraft:player,tag=!summon,team=spicebush] at @s if entity @e[tag=prioritytarget,distance=..3,tag=!adminfrfr,tag=!notarget,type=!item,type=!minecraft:experience_orb,type=!#minecraft:impact_projectiles,type=!#minecraft:arrows,type=!minecraft:block_display,type=!minecraft:marker,team=!spicebush] run target @s set @n[tag=!adminfrfr,tag=!notarget,type=!item,type=!minecraft:experience_orb,distance=0.00001..,type=!#minecraft:impact_projectiles,type=!#minecraft:arrows,type=!minecraft:block_display,type=!minecraft:marker,team=!spicebush,tag=prioritytarget]
execute as @e[type=!minecraft:player,tag=!summon,team=antiblagh] at @s if entity @e[tag=prioritytarget,distance=..3,tag=!adminfrfr,tag=!notarget,type=!item,type=!minecraft:experience_orb,type=!#minecraft:impact_projectiles,type=!#minecraft:arrows,type=!minecraft:block_display,type=!minecraft:marker,team=!antiblagh] run target @s set @n[tag=!adminfrfr,tag=!notarget,type=!item,type=!minecraft:experience_orb,distance=0.00001..,type=!#minecraft:impact_projectiles,type=!#minecraft:arrows,type=!minecraft:block_display,type=!minecraft:marker,team=!antiblagh,tag=prioritytarget]
execute as @e[type=!minecraft:player,team=enemy] at @s if entity @e[tag=prioritytarget,distance=..3,tag=!adminfrfr,tag=!notarget,type=!item,type=!minecraft:experience_orb,type=!#minecraft:impact_projectiles,type=!#minecraft:arrows,type=!minecraft:block_display,type=!minecraft:marker,team=!enemy] run target @s set @n[tag=!adminfrfr,tag=!notarget,type=!item,type=!minecraft:experience_orb,distance=0.00001..,type=!#minecraft:impact_projectiles,type=!#minecraft:arrows,type=!minecraft:block_display,type=!minecraft:marker,team=!enemy,tag=prioritytarget]
