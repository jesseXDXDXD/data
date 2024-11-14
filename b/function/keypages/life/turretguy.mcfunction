execute at @e[tag=lifesummon,tag=!turretguy] if score @n[tag=lifesummon] ownerid = @s ownerid run tag @n[tag=lifesummon] add sameidlifesummon
execute at @n[tag=sameidlifesummon,distance=0.001..] run tp @s ~ ~3 ~
execute unless entity @e[tag=sameidlifesummon] run kill @s
tag @e remove sameidlifesummon