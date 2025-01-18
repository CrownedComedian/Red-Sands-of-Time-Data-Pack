# Do not run if previous block is not a path block
$execute unless block ^$(x) ^$(y) ^$(z) #rsot:paths run return 0

# tp marker to here
$execute summon minecraft:marker positioned ^$(x) ^$(y) ^$(z) run tp @n[type=minecraft:marker] @s
kill @n[type=minecraft:marker,tag=!rsot_path]

# Check for chunk edge
function rsot:scoreboard/update_marker_pos with block ~ ~ ~
$execute if predicate rsot:generate_path_along_z_axis unless score @n[type=minecraft:marker,distance=0..3] z matches 1..14 run return run function rsot:fill/extend_frame {x:$(x), y:$(y), z:$(z)}
$execute if predicate rsot:generate_path_along_x_axis unless score @n[type=minecraft:marker,distance=0..3] x matches 1..14 run return run function rsot:fill/extend_frame {x:$(x), y:$(y), z:$(z)}

# Clone the path block to this location
$clone ^$(x) ^$(y) ^$(z) ^$(x) ^$(y) ^$(z) ^ ^ ^

# Detect direction for chunk (continue in rsot:direction_detection.mcfunction)
place jigsaw rsot:direction/detection rsot:path_in 1 ^ ^ ^1
