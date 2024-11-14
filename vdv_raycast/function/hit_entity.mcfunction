#Mark the ray has having found an entity.

scoreboard players set #hit vdvcasttemp 1

#Running custom commands since the entity was found.

damage @s 80 minecraft:player_attack by @n[tag=vdvray,limit=1] from @n[tag=vdvray,limit=1]
scoreboard players set #hit vdvcasttemp 0