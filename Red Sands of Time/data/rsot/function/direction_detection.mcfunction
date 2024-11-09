# Add/update rotation data to marker
execute if block ^ ^ ^1 #rsot:paths run data modify entity @n[type=minecraft:marker,distance=0..3] data.rotation set value 180
execute if block ^ ^ ^-1 #rsot:paths run data modify entity @n[type=minecraft:marker,distance=0..3] data.rotation set value 0
execute if block ^1 ^ ^ #rsot:paths run data modify entity @n[type=minecraft:marker,distance=0..3] data.rotation set value 270
execute if block ^-1 ^ ^ #rsot:paths run data modify entity @n[type=minecraft:marker,distance=0..3] data.rotation set value 90

# Place a destination or path
function rsot:place/destination_or_path with entity @n[type=minecraft:marker,distance=0..3] data