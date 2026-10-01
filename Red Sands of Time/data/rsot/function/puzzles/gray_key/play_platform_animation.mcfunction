# clear the space
fill ^-5 ^2 ^5 ^-13 ^3 ^13 minecraft:air
fill ^-5 ^4 ^5 ^-13 ^6 ^13 minecraft:air replace minecraft:iron_chain

# summon platform block display entities
execute if block ~ ~ ~ chain_command_block[facing=north] run function rsot:summon/oriented_gray_key_platform {a:south,b:west,c:north,d:east}
execute if block ~ ~ ~ chain_command_block[facing=south] run function rsot:summon/oriented_gray_key_platform {a:north,b:east,c:south,d:west}
execute if block ~ ~ ~ chain_command_block[facing=east] run function rsot:summon/oriented_gray_key_platform {a:west,b:north,c:east,d:south}
execute if block ~ ~ ~ chain_command_block[facing=west] run function rsot:summon/oriented_gray_key_platform {a:east,b:south,c:west,d:north}

# tp platform down
execute positioned ^-9 ^4 ^9 as @e[tag=gray_key_platform,distance=..20] at @s run tp @s ~ ~-2 ~