# Teleports players to the cage in liminal space
execute as @a[distance=..500] run clear @s *[!custom_data={rsot:{book_type:"admin_portal"}}]
$execute as @a[distance=..500] in rsot:liminal_space run tp @s $(x) $(y) $(z) $(rotation) 0

# check game state
schedule function rsot:game/cehck_end 2s