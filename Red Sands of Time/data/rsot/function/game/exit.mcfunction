# Executed when a player escapses the tomb.

# tp to liminal space
$execute in rsot:liminal_space run tp @s $(x) $(y) $(z) $(rotation) 0

# Give player resistance
effect give @s minecraft:resistance infinite 255 true

# check game state
schedule function rsot:game/check_end 2s