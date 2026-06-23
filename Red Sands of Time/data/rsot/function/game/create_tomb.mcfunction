# Executed when a new tomb is generated.

# Set timer marker data to team from player data
data modify entity @n[type=minecraft:marker,tag=rsot_timer,distance=0..2] data.team set from entity @p[tag=needs_tomb_spawnpoint] Dimension

# Convert "rsot:<team>" to just "<team>"
data modify entity @n[type=minecraft:marker,tag=rsot_timer,distance=0..2] data.team set string entity @n[type=minecraft:marker,tag=rsot_timer,distance=0..2] data.team 5

function rsot:scoreboard/init_timer with entity @n[type=minecraft:marker,tag=rsot_timer,distance=0..2] data