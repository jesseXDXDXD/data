execute if entity @s[type=player] run attribute @s minecraft:generic.safe_fall_distance modifier remove small
execute if entity @s[type=player] run attribute @s minecraft:generic.scale modifier remove small
execute if entity @s[type=player] run attribute @s minecraft:generic.movement_speed modifier remove small
execute if entity @s[type=player] run attribute @s minecraft:generic.movement_speed modifier add small -0.02 add_value
execute if entity @s[type=player] run attribute @s minecraft:generic.safe_fall_distance modifier add small -1.5 add_value
execute if entity @s[type=player] run attribute @s minecraft:generic.scale modifier add small -0.5 add_value