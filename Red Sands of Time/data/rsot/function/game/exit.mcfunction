# Executed when a player escapses the tomb.

# tp to liminal space
$execute in rsot:liminal_space run tp @s $(x) $(y) $(z) $(rotation) 0

# check game state
schedule function rsot:game/check_end 2s