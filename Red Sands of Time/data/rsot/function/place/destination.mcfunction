# $tellraw @a "placing destination for $(path_type) heading $(heading) with rotation $(rotation)"

# Just place the destination if no rotation is needed
$execute if entity @s[nbt={data:{rotation:0}}] run return run place jigsaw rsot:destinations/$(destination) rsot:path_in 20 ~ ~1 ~

# Place destination direction structure if rotation is needed
$execute if entity @s[nbt={data:{rotation:180}}] run return run place jigsaw rsot:direction/destinations/$(destination)_$(rotation) rsot:path_in 20 ^ ^ ^1
$execute if entity @s[nbt={data:{rotation:90}}] run return run place jigsaw rsot:direction/destinations/$(destination)_$(rotation) rsot:path_in 20 ^-1 ^ ^
$execute if entity @s[nbt={data:{rotation:270}}] run return run place jigsaw rsot:direction/destinations/$(destination)_$(rotation) rsot:path_in 20 ^1 ^ ^

# Remove the marker after placing the destination
kill @s