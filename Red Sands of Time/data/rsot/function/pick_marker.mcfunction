# pick_marker.mcfunction
# Designed to be executed at each path block location on the mini map above the timer

# Summon the path marker
$summon marker ~ ~ ~ {data:{id:"$(id)", path_type:"$(path_type)", heading:"$(heading)", portal:"$(portal)"}}

# Set depth scoreboard value for the marker
scoreboard players set @n[type=minecraft:marker] depth 0

# Tag the marker
tag @n[type=minecraft:marker] add rsot_path

# Set the path block type to this location for the mini map above the timer
$setblock ~ ~ ~ $(id)