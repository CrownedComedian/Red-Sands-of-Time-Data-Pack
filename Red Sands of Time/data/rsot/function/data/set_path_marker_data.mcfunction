# Must be executed last in rsot:pick_marker.mcfuntion

$data modify entity @n[type=minecraft:marker,distance=0..1] data merge value {id:"$(id)", path_type:"$(path_type)", heading:"$(heading)", portal:"$(portal)"}

# Set depth scoreboard value for the marker
scoreboard players set @n[type=minecraft:marker,distance=0..3] depth 0

# Tag the marker
tag @n[type=minecraft:marker,distance=0..3] add rsot_path
$execute if predicate {"condition":"minecraft:value_check","value":{"type":"minecraft:constant","value":$(generate_with_hub)},"range":1} run tag @n[type=minecraft:marker,distance=0..3] add generate_with_hub

# Set the path block type to this location for the mini map above the timer
$setblock ~ ~ ~ $(id)