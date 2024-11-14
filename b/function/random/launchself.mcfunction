# summon temporary entity "in front of the player", if the player was standing at 0 0 0
execute positioned 0.0 0 0.0 run summon marker ^ ^0.5 ^1.5 {Tags:["direction"]}

# summon the projectileshotforfunction entity (e.g. sheep, but can also be an arrow/snowball/etc. 
# When using a projectileshotforfunction, you might want to summon it in front of the player so it doesn't hit the player themselves)
# you might want to summon it at the players eyes as well using anchored eyes

# copy the markers position tag to the sheeps motion tag
data modify entity @s Motion set from entity @e[type=marker,tag=direction,limit=1] Pos

# clean up
kill @e[tag=direction]