#Run a function if a block was successfully detected.

execute unless block ~ ~ ~ #vdv_teleportray:blocks run function vdv_teleportray:hit_block
scoreboard players add #distance teleportcasttemp 1

#If the raycast failed, run a function with the custom commands.

execute if score #hit teleportcasttemp matches 0 if score #distance teleportcasttemp matches 101.. run function vdv_teleportray:failed

#Advance forward and run the ray again if no entity and/or block was found.

execute if score #hit teleportcasttemp matches 0 if score #distance teleportcasttemp matches ..100 positioned ^ ^ ^0.1 run function vdv_teleportray:ray