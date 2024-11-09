# Teleports players to the cage in liminal space

# Simulate player death
execute as @a[distance=..300] run function rsot:player_died

# Clear player inventory
execute as @a[distance=..300] run clear @s

# Teleport to cage
$execute as @a[distance=..300] in rsot:liminal_space run tp @s $(x) $(y) $(z) $(rotation) 0

# check game state
schedule function rsot:game/check_end 2s