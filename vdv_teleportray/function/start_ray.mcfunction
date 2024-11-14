#Setting up the raycasting data.

tag @s add teleportray
scoreboard players set #hit teleportcasttemp 0
scoreboard players set #distance teleportcasttemp 0

#Activating the raycast. This function will call itself until it is done.

function vdv_teleportray:ray

#Raycasting finished, removing tag from the raycaster.

tag @s remove teleportray