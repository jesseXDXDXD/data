execute if score @s death matches 1.. run function b:ondeath
# keep this at the start
execute if score @s abilityduration matches 1.. run scoreboard players set @s ability1 0
execute if score @s abilityduration matches 1.. run scoreboard players set @s ability2 0
execute if score @s abilityduration matches 1.. run scoreboard players set @s ability3 0
execute if score @s abilityduration matches 1.. run scoreboard players set @s ability4 0
execute if score @s abilityduration matches 1.. run scoreboard players set @s egoability 0

#yeah that part
execute unless entity @s[tag=nha] run item replace entity @s hotbar.4 with nether_star[max_stack_size=1,item_name='"Ability 1"',food={nutrition:0,saturation:0,can_always_eat:true,eat_seconds:1000000}]
execute unless entity @s[tag=nha] run item replace entity @s hotbar.5 with nether_star[max_stack_size=1,item_name='"Ability 2"',food={nutrition:0,saturation:0,can_always_eat:true,eat_seconds:1000000}]
execute unless entity @s[tag=nha] run item replace entity @s hotbar.6 with nether_star[max_stack_size=1,item_name='"Ability 3"',food={nutrition:0,saturation:0,can_always_eat:true,eat_seconds:1000000}]
execute unless entity @s[tag=nha] run item replace entity @s hotbar.7 with nether_star[max_stack_size=1,item_name='"Ability 4"',food={nutrition:0,saturation:0,can_always_eat:true,eat_seconds:1000000}]
execute unless entity @s[tag=nha] run item replace entity @s hotbar.8 with nether_star[max_stack_size=1,item_name='"E.G.O"',food={nutrition:0,saturation:0,can_always_eat:true,eat_seconds:1000000}]

#agh
recipe take @s[tag=!adminfrfr]
#passives
execute if score @s passive matches 1 run function b:passives/cow/cow
execute if score @s passive matches 2 run function b:passives/jump/jump

#keypages
execute if score @s keypage matches 1 run function b:keypages/life/life
execute if score @s keypage matches 2 run function b:keypages/gojo/gojo
execute if score @s keypage matches 3 run function b:keypages/skipper/skipper
execute if score @s keypage matches 4 run function b:keypages/cow/cow

#egos
execute if score @s ego matches 1 run function b:egos/ss/ss
execute if score @s ego matches 2 run function b:egos/bigslash/bigslash

#blagh
execute if score @s ability1cd matches ..0 run scoreboard players set @s ability1cd 0
execute if score @s ability2cd matches ..0 run scoreboard players set @s ability2cd 0
execute if score @s ability3cd matches ..0 run scoreboard players set @s ability3cd 0
execute if score @s ability4cd matches ..0 run scoreboard players set @s ability4cd 0
execute if score @s egocd matches ..0 run scoreboard players set @s egocd 0

# keep this at the end
scoreboard players set @s ability1 0
scoreboard players set @s ability2 0
scoreboard players set @s ability3 0
scoreboard players set @s ability4 0
scoreboard players set @s egoability 0
execute unless score @s abilityduration matches 1.. run title @s actionbar ["1: ",{"score":{"name":"@s","objective":"ability1cd"}}," 2: ",{"score":{"name":"@s","objective":"ability2cd"}}," 3: ",{"score":{"name":"@s","objective":"ability3cd"}}," 4: ",{"score":{"name":"@s","objective":"ability4cd"}}," EGO: ",{"score":{"name":"@s","objective":"egocd"}}]
execute if score @s abilityduration matches 1.. run title @s actionbar ["1: ",{"score":{"name":"@s","objective":"ability1cd"}}," 2: ",{"score":{"name":"@s","objective":"ability2cd"}}," 3: ",{"score":{"name":"@s","objective":"ability3cd"}}," 4: ",{"score":{"name":"@s","objective":"ability4cd"}}," EGO: ",{"score":{"name":"@s","objective":"egocd"}}," Duration: ",{"score":{"name":"@s","objective":"abilityduration"}}]

execute unless score @s abilityduration matches 1.. run scoreboard players set @s ability1active 0
execute unless score @s abilityduration matches 1.. run scoreboard players set @s ability2active 0
execute unless score @s abilityduration matches 1.. run scoreboard players set @s ability3active 0
execute unless score @s abilityduration matches 1.. run scoreboard players set @s ability4active 0
execute unless score @s abilityduration matches 1.. run scoreboard players set @s egoabilityactive 0
#cleanup n such
execute unless entity @s[scores={keypage=3}] run attribute @s minecraft:generic.scale modifier remove skipper
execute unless entity @s[scores={keypage=3}] run attribute @s minecraft:generic.max_health modifier remove skipper2