# Used in places where path structures generate flush against a chunk border.
# Ensures that the next path structure is generated in the correct direction.
fill ^2 ^1 ^1 ^-2 ^1 ^2 minecraft:packed_mud
fill ^2 ^2 ^1 ^1 ^4 ^2 minecraft:mud_bricks
fill ^-1 ^2 ^1 ^-2 ^4 ^2 minecraft:mud_bricks
fill ^2 ^5 ^1 ^-2 ^6 ^2 minecraft:terracotta

# Update the input directional coordinates of the command
data modify block ~ ~ ~ Command set value "execute if entity @p[distance=0..40] run function rsot:generate_path {x:0, y:0, z:-2}"

# Clone command block to the next area
clone ^ ^ ^ ^ ^ ^ ^ ^ ^2

# Clone the path block to this location
$clone ^$(x) ^$(y) ^$(z) ^$(x) ^$(y) ^$(z) ^ ^ ^