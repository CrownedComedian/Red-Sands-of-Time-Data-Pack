# $tellraw @a "placing path_n for $(path_type) heading $(heading) with rotation $(rotation)"
scoreboard players add @n[type=minecraft:marker] depth 1

# Just place more path if no rotation is needed
$execute if entity @n[type=minecraft:marker,distance=0..3,nbt={data:{rotation:0}}] run return run place jigsaw rsot:paths/depth_n/$(heading)/$(path_type) rsot:path_in 20 ~ ~1 ~

# Place path direction structure if rotation is needed
$execute if entity @n[type=minecraft:marker,distance=0..3,nbt={data:{rotation:180}}] run return run place jigsaw rsot:direction/path_n/$(heading)/$(path_type)_$(rotation) rsot:path_in 20 ^ ^ ^1
$execute if entity @n[type=minecraft:marker,distance=0..3,nbt={data:{rotation:90}}] run return run place jigsaw rsot:direction/path_n/$(heading)/$(path_type)_$(rotation) rsot:path_in 20 ^-1 ^ ^
$execute if entity @n[type=minecraft:marker,distance=0..3,nbt={data:{rotation:270}}] run return run place jigsaw rsot:direction/path_n/$(heading)/$(path_type)_$(rotation) rsot:path_in 20 ^1 ^ ^