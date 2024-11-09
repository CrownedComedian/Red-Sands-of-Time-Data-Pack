# Executed when a new tomb is generated.
data modify entity @n[type=minecraft:marker,tag=rsot_timer] data.team set from entity @p Dimension
data modify entity @n[type=minecraft:marker,tag=rsot_timer] data.team set string entity @n[type=minecraft:marker,tag=rsot_timer] data.team 5

# Ensure players have full health
effect give @a[distance=..100] minecraft:regeneration 3 9 true

function rsot:scoreboard/init_timer with entity @n[type=minecraft:marker,tag=rsot_timer] data