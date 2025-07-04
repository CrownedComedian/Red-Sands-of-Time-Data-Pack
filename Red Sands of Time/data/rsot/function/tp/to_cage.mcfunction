# Teleports players to the cage in liminal space

# Simulate player death
execute as @a[distance=..300] run function rsot:player_died

# Clear player inventory
execute as @a[distance=..300] run clear @s *[!custom_data={rsot:{book_type:"admin_portal"}}]

# Give player resistance
effect give @s minecraft:resistance infinite 255 true

# Teleport to cage
$execute as @a[distance=..300] in rsot:liminal_space run tp @s $(x) $(y) $(z) $(rotation) 0

# check game state
schedule function rsot:game/check_end 2s