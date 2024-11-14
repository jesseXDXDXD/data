execute if score @s ability1cd matches ..0 at @e[team=!antiblagh,distance=..7.5,tag=!adminfrfr] run summon fireball ~ ~30 ~ {ExplosionPower:2b,Motion:[0.0,-0.1,0.0],Tags:["notp"],Item:{id:"minecraft:coal",count:1}}
execute if score @s ability1cd matches ..0 if entity @e[team=!antiblagh,distance=..7.5,tag=!adminfrfr] run scoreboard players set @s ability1cd 40

execute if score @s ability2cd matches ..0 anchored eyes positioned ^ ^ ^ run function b:freg/fregskullshoot
execute if score @s ability2cd matches ..0 run scoreboard players set @s ability2cd 25