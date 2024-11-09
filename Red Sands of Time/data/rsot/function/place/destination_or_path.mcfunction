# $tellraw @a [{"text":"#$(path_type) path score is: "}, {"score":{"name":"#$(path_type)","objective":"depth"}}]
# tellraw @a [{"text":"marker score is: "}, {"score":{"name":"@e[type=minecraft:marker,limit=1,sort=nearest]","objective":"depth"}}]

# Check if the destination should be placed
$execute if score @e[type=minecraft:marker,limit=1,sort=nearest] depth >= #$(path_type) depth run return run function rsot:place/destination with entity @e[type=minecraft:marker,limit=1,sort=nearest,distance=0..3] data

# Otherwise, place more path
function rsot:place/path with entity @e[type=minecraft:marker,limit=1,sort=nearest] data