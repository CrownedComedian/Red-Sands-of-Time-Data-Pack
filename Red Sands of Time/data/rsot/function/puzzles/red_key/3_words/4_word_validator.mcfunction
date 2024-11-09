# Used to check if the 5-letter word is correct.
# the 3rd position of coordinates after "if blocks" is different for north and east vs. south and west.

execute if block ~ ~ ~ minecraft:repeating_command_block[facing=north] if blocks ^5 ^-1 ^-1 ^2 ^-1 ^-1 ^5 ^3 ^-1 all run return 0
execute if block ~ ~ ~ minecraft:repeating_command_block[facing=east] if blocks ^5 ^-1 ^-1 ^2 ^-1 ^-1 ^5 ^3 ^-1 all run return 0

execute if block ~ ~ ~ minecraft:repeating_command_block[facing=south] if blocks ^5 ^-1 ^-1 ^2 ^-1 ^-1 ^2 ^3 ^-1 all run return 0
execute if block ~ ~ ~ minecraft:repeating_command_block[facing=west] if blocks ^5 ^-1 ^-1 ^2 ^-1 ^-1 ^2 ^3 ^-1 all run return 0