# Update the marker's x and z scoreboard values to the modulous of 16 to check for chunk borders
$scoreboard players set @n[type=minecraft:marker,distance=0..3] x $(x)
$scoreboard players set @n[type=minecraft:marker,distance=0..3] z $(z)
scoreboard players operation @n[type=minecraft:marker] x %= #16 x
scoreboard players operation @n[type=minecraft:marker] z %= #16 z
