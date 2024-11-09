# Do not run if previous block is not a path block
$execute unless block ^$(x) ^$(y) ^$(z) #rsot:paths run return 0

# tp marker to here
$execute summon minecraft:marker positioned ^$(x) ^$(y) ^$(z) run tp @n[type=minecraft:marker] @s
kill @n[type=minecraft:marker,tag=!rsot_path]

# Clone the path block to this location
$clone ^$(x) ^$(y) ^$(z) ^$(x) ^$(y) ^$(z) ^ ^ ^

# Detect direction for chunk (continue in rsot:direction_detection.mcfunction)
place jigsaw rsot:direction/detection rsot:path_in 1 ^ ^ ^1
