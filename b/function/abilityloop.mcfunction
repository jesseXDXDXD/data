scoreboard players enable @a ability1
scoreboard players enable @a ability2
scoreboard players enable @a ability3
scoreboard players enable @a ability4
scoreboard players enable @a egoability
scoreboard players remove @e ability1cd 1
scoreboard players remove @e ability2cd 1
scoreboard players remove @e ability3cd 1
scoreboard players remove @e ability4cd 1
scoreboard players remove @e abilityduration 1
scoreboard players remove @e egocd 1
scoreboard players remove @e passivecd 1

scoreboard players set @e[tag=nopassivecd] passivecd 0
scoreboard players set @e[tag=nocd,scores={ability1cd=3..}] ability1cd 2
scoreboard players set @e[tag=nocd,scores={ability2cd=3..}] ability2cd 2
scoreboard players set @e[tag=nocd,scores={ability3cd=3..}] ability3cd 2
scoreboard players set @e[tag=nocd,scores={ability4cd=3..}] ability4cd 2
scoreboard players set @e[tag=nocd,scores={egocd=3..}] egocd 2

#keypage global passives (mainly mobs)
function b:keypages/life/mobs
function b:keypages/gojo/mobs
function b:keypages/skipper/mobs
function b:keypages/cow/mobs
#ego global passives

#ability loop for players specifically
execute as @a[tag=ingame] at @s run function b:abilityloopplayer
#ability loop for bosses
execute as @e[tag=cowboss] at @s run function b:bosses/cow/cow
execute as @e[tag=zombieboss] at @s run function b:bosses/zombie/zombie

function b:bosses/zombie/mobs