# Executes when a new rsot tomb is generated
clear @a[distance=0..100]
tag @a[distance=0..100] add free
advancement revoke @a[distance=0..100] through rsot:custom/root
effect clear @a[distance=0..100] minecraft:slow_falling
effect clear @a[distance=0..100] minecraft:blindness
effect clear @a[distance=0..100] minecraft:darkness

# tp all nearby players to starting platform and face the timer
execute if block ~ ~ ~ minecraft:command_block[facing=north] run tp @a[distance=0..100] ^ ^6 ^30 0 0
execute if block ~ ~ ~ minecraft:command_block[facing=south] run tp @a[distance=0..100] ^ ^6 ^30 180 0
execute if block ~ ~ ~ minecraft:command_block[facing=east] run tp @a[distance=0..100] ^ ^6 ^30 90 0
execute if block ~ ~ ~ minecraft:command_block[facing=west] run tp @a[distance=0..100] ^ ^6 ^30 270 0