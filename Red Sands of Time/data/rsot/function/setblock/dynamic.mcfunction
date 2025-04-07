# Typically used in a command block to change itself to a block with 'id' from another data source.
# ex. /setblock x y z minecraft:command_block{auto:1b, Command:"function rsot:setblock/dynamic with entity @n[type=minecraft:marker,distance=..10,tag=rsot_puzzle] data.combination[0]"}
$setblock ~ ~ ~ $(id)