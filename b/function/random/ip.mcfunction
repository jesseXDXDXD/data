attribute @s minecraft:generic.safe_fall_distance modifier remove small
attribute @s minecraft:generic.scale modifier remove small
attribute @s minecraft:generic.movement_speed modifier remove small
attribute @s minecraft:generic.movement_speed modifier add small -0.02 add_value
attribute @s minecraft:generic.scale modifier add small -0.5 add_value
execute unless entity @s[tag=initiatedperm] run give @s stone_sword[unbreakable={show_in_tooltip:false}] 1
execute unless entity @s[tag=initiatedperm] run give @s chainmail_helmet[unbreakable={show_in_tooltip:false}] 1
execute unless entity @s[tag=initiatedperm] run give @s chainmail_chestplate[unbreakable={show_in_tooltip:false}] 1
execute unless entity @s[tag=initiatedperm] run give @s chainmail_leggings[unbreakable={show_in_tooltip:false}] 1
execute unless entity @s[tag=initiatedperm] run give @s chainmail_boots[unbreakable={show_in_tooltip:false}] 1