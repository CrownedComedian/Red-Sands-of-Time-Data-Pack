# Place a depth_0 path if we are branching directly out of the hub
execute if score @n[type=minecraft:marker] depth matches 0 run return run function rsot:place/path_0 with entity @n[type=minecraft:marker] data

# Otherwise, place a depth_n path
function rsot:place/path_n with entity @n[type=minecraft:marker] data