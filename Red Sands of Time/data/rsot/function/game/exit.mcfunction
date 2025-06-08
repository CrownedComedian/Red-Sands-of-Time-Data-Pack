# Executed when a player escapses the tomb.

# tp to liminal space
$execute in rsot:liminal_space run tp @s $(x) $(y) $(z) $(rotation) 0

# Give player resistance
effect give @s minecraft:resistance infinite 255 true

# Set spawn back in liminal space
function rsot:spawnpoint with storage rsot:game respawn.escape

# TODO - tp spectators out as well if there are no more team members to spectate

# check game state
schedule function rsot:game/check_end 2s