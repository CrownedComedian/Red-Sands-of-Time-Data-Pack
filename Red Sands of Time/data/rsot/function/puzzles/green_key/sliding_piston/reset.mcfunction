# Used to check if the 5-letter word is correct.
# the 3rd position of coordinates after "if blocks" is different for north and east vs. south and west.

execute if block ~ ~ ~ minecraft:command_block[facing=north] run clone ^-4 ^-4 ^-6 ^-1 ^-3 ^-3 ^-1 ^-4 ^-9
execute if block ~ ~ ~ minecraft:command_block[facing=east] run clone ^-4 ^-4 ^-6 ^-1 ^-3 ^-3 ^-1 ^-4 ^-12
execute if block ~ ~ ~ minecraft:command_block[facing=south] run clone ^-4 ^-4 ^-6 ^-1 ^-3 ^-3 ^-4 ^-4 ^-12
execute if block ~ ~ ~ minecraft:command_block[facing=west] run clone ^-4 ^-4 ^-6 ^-1 ^-3 ^-3 ^-4 ^-4 ^-9