# Designed to be executed at each path block location on the mini map above the timer

# Summon a new marker with the corrisponding path data
$execute summon marker run data modify entity @s data set from storage rsot:paths content[$(path_index)]

# Tag the marker
tag @n[type=minecraft:marker,distance=0..1] add rsot_path

# Set the path block type to this location for the mini map above the timer
function rsot:setblock/dynamic with entity @n[type=minecraft:marker,tag=rsot_path,distance=0..1] data