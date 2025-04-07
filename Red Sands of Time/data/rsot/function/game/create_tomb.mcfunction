# Executed when a new tomb is generated.
data modify entity @n[type=minecraft:marker,tag=rsot_timer,distance=0..2] data.team set from entity @p Dimension
data modify entity @n[type=minecraft:marker,tag=rsot_timer,distance=0..2] data.team set string entity @n[type=minecraft:marker,tag=rsot_timer,distance=0..2] data.team 5

function rsot:scoreboard/init_timer with entity @n[type=minecraft:marker,tag=rsot_timer,distance=0..2] data