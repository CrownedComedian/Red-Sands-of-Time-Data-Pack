# Executed only once ever

# Init escape respawn data
$data modify storage rsot:game respawn.escape.x set value $(x)
$data modify storage rsot:game respawn.escape.y set value $(y)
$data modify storage rsot:game respawn.escape.z set value $(z)

execute if block ~ ~ ~ minecraft:command_block[facing=north] run data modify storage rsot:game respawn.escape.rotation set value 180
execute if block ~ ~ ~ minecraft:command_block[facing=south] run data modify storage rsot:game respawn.escape.rotation set value 0
execute if block ~ ~ ~ minecraft:command_block[facing=east] run data modify storage rsot:game respawn.escape.rotation set value 270
execute if block ~ ~ ~ minecraft:command_block[facing=west] run data modify storage rsot:game respawn.escape.rotation set value 90

# Remove blocks
fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:air